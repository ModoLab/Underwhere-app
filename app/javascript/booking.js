import flatpickr from 'flatpickr';

const toggleDateInputs = function() {
  if (startDateInput && endDateInput) {
    const unvailableDates = JSON.parse(document.querySelector('.widget-content').dataset.unavailable)
  }
};

export { toggleDateInputs }
