import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
// import { French } from "flatpickr/dist/l10n/fr.js"

const initFlatpickr = () => {
  // Tried to use the french locale but it doesn't work: ends_at stays nil
  // flatpickr.localize(French);
  flatpickr("#start_date", {
    minDate: "today",
    altInput: true,
    altFormat: "l j F Y",
    plugins: [new rangePlugin({ input: "#end_date" })]
  });
}

export { initFlatpickr };
