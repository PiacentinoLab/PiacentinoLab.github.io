---
layout: page
permalink: /resources/
title: lab resources
description: Internal meeting logistics and lab handbook (password-protected).
nav: true
nav_order: 7
robots: noindex, nofollow
---

<div id="resources-gate">
  <p><strong>This page is for internal lab members.</strong></p>
  <p>Enter the password to view meeting logistics and the lab handbook.</p>
  <form id="resources-password-form" autocomplete="off">
    <input type="password" id="resources-password-input" placeholder="Password" />
    <button type="submit">Enter</button>
  </form>
  <p id="resources-password-error" style="color: #c0392b; display: none;">Incorrect password. Please try again.</p>
</div>

<div id="resources-content" style="display: none;">

**This is placeholder content — replace with your own.**

### Meeting logistics
[Placeholder: recurring meeting times, video call links, calendar.]

### Lab handbook
[Placeholder: onboarding checklist, protocols, policies, and other internal documentation.]

</div>

<script>
  // NOTE: This is a client-side placeholder gate, not real security. Anyone who
  // views this page's source can read RESOURCES_PASSWORD_HASH and the gated
  // content itself is still shipped to every visitor's browser. It only deters
  // casual browsing of a public GitHub Pages site. For real access control,
  // move sensitive content off this static site (e.g., a private wiki/drive)
  // before publishing anything actually sensitive here.
  (async function () {
    var RESOURCES_PASSWORD_HASH = "REPLACE_WITH_SHA256_HASH_OF_PASSWORD";

    async function sha256(text) {
      var data = new TextEncoder().encode(text);
      var digest = await crypto.subtle.digest("SHA-256", data);
      return Array.from(new Uint8Array(digest))
        .map(function (b) { return b.toString(16).padStart(2, "0"); })
        .join("");
    }

    var form = document.getElementById("resources-password-form");
    var input = document.getElementById("resources-password-input");
    var error = document.getElementById("resources-password-error");
    var gate = document.getElementById("resources-gate");
    var content = document.getElementById("resources-content");

    function unlock() {
      gate.style.display = "none";
      content.style.display = "block";
      sessionStorage.setItem("resourcesUnlocked", "true");
    }

    if (sessionStorage.getItem("resourcesUnlocked") === "true") {
      unlock();
    }

    form.addEventListener("submit", async function (e) {
      e.preventDefault();
      var hash = await sha256(input.value);
      if (hash === RESOURCES_PASSWORD_HASH) {
        error.style.display = "none";
        unlock();
      } else {
        error.style.display = "block";
      }
    });
  })();
</script>
