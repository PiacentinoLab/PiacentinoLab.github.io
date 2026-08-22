document.addEventListener("DOMContentLoaded", function () {
  var links = document.querySelectorAll(".handbook-toc-sub-link");
  if (!links.length || !("IntersectionObserver" in window)) return;

  var headings = [];
  links.forEach(function (link) {
    var anchor = link.getAttribute("data-anchor");
    var heading = document.getElementById(anchor);
    if (heading) headings.push(heading);
  });
  if (!headings.length) return;

  var setActive = function (anchor) {
    links.forEach(function (link) {
      link.classList.toggle("active", link.getAttribute("data-anchor") === anchor);
    });
  };

  var observer = new IntersectionObserver(
    function (entries) {
      entries.forEach(function (entry) {
        if (entry.isIntersecting) setActive(entry.target.id);
      });
    },
    { rootMargin: "-100px 0px -70% 0px", threshold: 0 }
  );

  headings.forEach(function (heading) {
    observer.observe(heading);
  });

  // Highlight the top subsection by default
  setActive(headings[0].id);
});
