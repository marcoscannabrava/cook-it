import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr("#time_start", {
  altInput: true,
  enableTime: true,
})

flatpickr("#time_end", {
  altInput: true,
  enableTime: true,
})
