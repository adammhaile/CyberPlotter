/*!\file SmoothADC.cpp
** \author SMFSW
** \date 2017/11/21
** \copyright GNU LESSER GENERAL PUBLIC LICENSE (c) 2017, SMFSW
** \brief Get ADC to return averaged values
**/


extern "C" {
#include <string.h> // for memcpy
}

#if ARDUINO > 22
#include <Arduino.h>
#else
#include <WProgram.h>
#endif

#ifdef DEBUG
#include <HardwareSerial.h>
#endif

#include "SmoothADC.h"


void SmoothADC::init(const uint16_t Pin, const tick_base Res, const uint32_t Period)
{
	pinMode(Pin, INPUT);
	ADCPin = Pin;
	setResolution(Res);
	AcqPeriod = Period;
	ADCChannel.NumAcq = 0;
}


bool SmoothADC::TestAcqRate(void)
{
	uint32_t tempTime = get_tick();
	
	if (tempTime - MemTimeAcq >= AcqPeriod)
	{
		MemTimeAcq = tempTime;
		return true;
	}
	
	return false;
}


void SmoothADC::Filtering(void)
{
	uint16_t		temp[DEF_NB_ACQ], swap;
	unsigned int	c;
	
	memcpy(temp, ADCChannel.ADCTab, sizeof(temp));	// Tab copy before average calc
	
	// Retrieve max value on 0 idx tab
	for (c = 1 ; c < DEF_NB_ACQ ; c++)
	{
		if (temp[0] < temp[c])
		{
			swap = temp[0];
			temp[0] = temp[c];
			temp[c] = swap;
		}
	}
	
	// Retrieve min value on 3 idx tab
	for (c = 1 ; c < (DEF_NB_ACQ-1) ; c++)
	{
		if (temp[DEF_NB_ACQ-1] > temp[c])
		{
			swap = temp[DEF_NB_ACQ-1];
			temp[DEF_NB_ACQ-1] = temp[c];
			temp[c] = swap;
		}
	}
	
	// Average calc
	ADCChannel.Average = ((temp[1] + temp[2]) / 2);
}


#define		DEF_BIT_ACQ		0x80U						//!< Bit used to specify all acquisitions ok (MSB)
#define		DEF_MSQ_NumAcq	(uint8_t) (~DEF_BIT_ACQ)	//!< Other bits in NumAcq (7 LSBs)

void SmoothADC::serviceADCPin(void)
{
	if (En == true)
	{
		if (TestAcqRate() == true)
		{
			ADCChannel.ADCTab[ADCChannel.NumAcq & DEF_MSQ_NumAcq] = analogRead(ADCPin);
			if ((ADCChannel.NumAcq++ & DEF_MSQ_NumAcq) >= DEF_NB_ACQ)	{ ADCChannel.NumAcq = DEF_BIT_ACQ; }
		}
	}
}


uint16_t SmoothADC::getADCVal(void)
{
	if (ADCChannel.NumAcq & DEF_BIT_ACQ)	{ Filtering(); }
	return ADCChannel.Average;
}


void SmoothADC::dbgInfo(void)			// needs SCI initialized in sketch setup
{
	#ifdef DEBUG
	String			dbgInfo = "";
	unsigned int	c;
	
	dbgInfo += "!> ";
	dbgInfo += "Pin A";
	dbgInfo += (getPin() - A0);
	dbgInfo += ",\tRate: ";
	dbgInfo += getPeriod();
	if (getResolution() == TB_US)	{ dbgInfo += "us"; }
	else							{ dbgInfo += "ms"; }
	Serial.println(dbgInfo);
	dbgInfo.remove(0);
	dbgInfo += "!> ";
	dbgInfo += "Tab :\t";
	for (c = 0 ; c < DEF_NB_ACQ ; c++)
	{
		dbgInfo += ADCChannel.ADCTab[c];
		dbgInfo += "\t";
	}
	Serial.println(dbgInfo);
	#endif
}
