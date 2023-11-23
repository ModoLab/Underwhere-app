import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  static values ={ unavailableDates: Array}
  static targets = ["endDate", "startDate"]
  connect() {
    console.log( this.unavailableDatesValue);
    flatpickr(this.startDateTarget, {
      minDate: 'today',
      disable: this.unavailableDatesValue,
      onChange: (selectedDates, selectedDate) => {
        if (selectedDate === '') {
          this.endDateTarget.disabled = true;
        }
        let minDate = selectedDates[0];
        minDate.setDate(minDate.getDate() + 1);
        endDateCalendar.set('minDate', minDate);
        this.endDateTarget.disabled = false;
      }
    });
    console.log("test")
    // console.log(this.endDateTarget)
    // console.log(this.startDateTarget)
    // console.log(this.unavailableDatesValue)
    const endDateCalendar = flatpickr(this.endDateTarget, {
      disable: this.unavailableDatesValue,
      },
    );
    // flatpickr(this.element)
  }
}
