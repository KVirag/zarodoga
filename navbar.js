const removeButton = document.querySelector('.remove-btn');


removeButton.addEventListener('click', () => {
  
  const navbarIcons = document.querySelector('.nav-links');

  
  const iconsHidden = navbarIcons.classList.contains('hide-icons');

  
  if (iconsHidden) {
    navbarIcons.classList.remove('hide-icons');
    

  } else {
    navbarIcons.classList.add('hide-icons');
  }
});




const mobileButton = document.getElementById('mobile-view');

mobileButton.addEventListener('click', () => {
  window.resizeTo(400, 600); 
});




const tabletButton = document.getElementById('tablet-view');

tabletButton.addEventListener('click', () => {
  window.resizeTo(2048, 1536); 
});



const desktopButton = document.getElementById('desktop-view');

desktopButton.addEventListener('click', () => {
  const contentContainer = document.querySelector('.content');

  contentContainer.style.width = '100%';
  contentContainer.style.height = '100vh';
});