document.addEventListener('DOMContentLoaded', function () {
  const btn = document.querySelector('.nav-toggle');
  const nav = document.getElementById('main-nav');
  if (!btn || !nav) return;
  btn.addEventListener('click', function () {
    const open = !nav.classList.contains('open');
    nav.classList.toggle('open', open);
    nav.hidden = !open;
    btn.setAttribute('aria-expanded', String(open));
  });
});
