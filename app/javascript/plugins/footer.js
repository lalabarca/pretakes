const fixedFooter = () => {
  const body = document.querySelector("body");
  const footer = document.querySelector(".footer");

  if (body.className === "sessions-new" || body.className === "registrations-new") {
    footer.classList.add("footer-fixed");
  }
}

export { fixedFooter };
