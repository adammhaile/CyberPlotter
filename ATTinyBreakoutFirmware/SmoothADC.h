/*!\file SmoothADC.h
** \author SMFSW
** \date 2017/11/21
** \copyright GNU LESSER GENERAL PUBLIC LICENSE (c) 2017, SMFSW
** \brief Get ADC to return averaged values
**/

#ifndef SmoothADC_h
#define SmoothADC_h

#include <inttypes.h>

//#define		DEBUG

#define		DEF_NB_ACQ		4U				//!< Number of acquisitions (specifies also size of tab)

/*!\enum tick_base
** \brief Tick resolution enum
**/
typedef enum tick_base {
	TB_US = 0,		//!< us tick resolution
	TB_MS			//!< ms tick resolution
} tick_base;

/*!\struct SmoothADCAcq_t
** \brief SmoothADC handling struct
**/
typedef struct {
	uint16_t		ADCTab[DEF_NB_ACQ];		//!< Acquisition tab
	uint16_t		Average;				//!< Averaged value
	uint8_t			NumAcq;					//!< Index of acquisition (number of Acq valid on MSB)
} SmoothADCAcq_t;


typedef SmoothADCAcq_t ADCId;				//!< Alias name for Acquisition struct


/*!	\class SmoothADC SmoothADC.h
**	\brief class containing the required methods for ADC averaging
**/
class SmoothADC
{
private:
	// Private variables
	// consts
	uint16_t	ADCPin;					//!< ACD Pin used
	uint32_t	AcqPeriod;				//!< Acquisition Period
	tick_base	Resolution;				//!< Tick resolution
	uint32_t	(*get_tick)(void);		//!< Time base function pointer
	// working vars
	ADCId		ADCChannel;				//!< Acquisition struct
	uint32_t	MemTimeAcq;				//!< Last Acquisition time
	bool		En;						//!< Module enabled/disable
	
	// Private methods
	/*!\brief Test if acquisition rate period elapsed
	** \return true if period elapsed
	**/
	bool TestAcqRate(void);

	/*!\brief ADC acquisitions filtering
	**/
	void Filtering(void);

public:
	/*!\brief SmoothADC class init
	** \param[in] Pin - ADC pin to service
	** \param[in] Res - Tick resolution (us/ms)
	** \param[in] Period - ADC pin period acquisition
	**/
	void init(const uint16_t Pin, const tick_base Res, const uint32_t Period);
	
	/*!\brief SmoothADC pin acquisition handler
	** \note Shall be called in loop
	**/
	void serviceADCPin(void);

	/*!\brief Print debug information to serial output
	** \note Activated if DEBUG symbol is defined
	**/
	void dbgInfo(void);			// needs SCI initialized in sketch setup
	
	/*!\brief Get smoothen ADC result
	** \return Average ADC result
	**/
	uint16_t getADCVal(void);
	
	/*!\brief Set pin to sevice
	** \param[in] Pin - ADC pin to service
	**/
	inline void setPin(const uint16_t Pin) __attribute__((always_inline)) {
		ADCPin = Pin; }
	
	/*!\brief Set tick resolution
	** \param[in] Res - Tick resolution (us/ms)
	**/
	inline void setResolution(const tick_base Res) __attribute__((always_inline)) {
		Resolution = Res;
		get_tick = (Resolution == TB_US) ? micros : millis; }
	
	/*!\brief Set pin acquisition period
	** \param[in] Period - ADC pin period acquisition
	**/
	inline void setPeriod(const uint32_t Period) __attribute__((always_inline)) {
		AcqPeriod = Period; }
	
	/*!\brief Get pin to sevice
	** \return ADC pin to service
	**/
	inline uint16_t getPin(void) __attribute__((always_inline)) {
		return ADCPin; }
	
	/*!\brief Get tick resolution
	** \return Tick resolution (us/ms)
	**/
	inline tick_base getResolution(void) __attribute__((always_inline)) {
		return Resolution; }
	
	/*!\brief Get pin acquisition period
	** \return ADC pin period acquisition
	**/
	inline uint16_t getPeriod(void) __attribute__((always_inline)) {
		return AcqPeriod; }
	
	/*!\brief Enable SmoothADC module
	**/
	inline void enable(void) __attribute__((always_inline)) {
		En = true;
		SmoothADC::init(ADCPin, Resolution, AcqPeriod);		// Reinit with same Pin, Resolution & Period
	}
	
	/*!\brief Disable SmoothADC module
	**/
	inline void disable(void) __attribute__((always_inline)) {
		En = false; }
	
	/*!\brief Get status of SmoothADC module
	** \return true if enabled, false otherwise
	**/
	inline bool isEnabled(void) __attribute__((always_inline)) {
		return En; }
	
	/*!\brief Get status of SmoothADC module
	** \return true if disabled, false otherwise
	**/
	inline bool isDisabled(void) __attribute__((always_inline)) {
		return (En ? false : true); }
};


#endif /* SmoothADC_h */

