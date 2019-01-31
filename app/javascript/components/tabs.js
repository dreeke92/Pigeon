
const allTabs = document.querySelectorAll('.charity-tab');
const aboutTab = document.getElementById('charity-about-tab');
const postsTab = document.getElementById('charity-posts-tab');
const contactTab = document.getElementById('charity-contact-tab');

const allPages = document.querySelectorAll('.charity-page');
const aboutPage = document.getElementById('charity-about-page');
const postsPage = document.getElementById('charity-posts-page');
const contactPage = document.getElementById('charity-contact-page');

function removeActiveTabs(){
  allTabs.forEach((tab) => {
  tab.classList.remove("active");
  });
};

function activateCurrentTab(event){
  event.currentTarget.classList.add("active");
}

function hideAllPages(){
  allPages.forEach((page) => {
    page.hidden = true;
  })
};

function showCurrentPage(event){
  if (event.currentTarget === aboutTab) {
    aboutPage.hidden = false;
  } else if (event.currentTarget === postsTab) {
    postsPage.hidden = false;
  } else if (event.currentTarget === contactTab) {
    contactPage.hidden = false;
  };
};

function initTabs(){
  allTabs.forEach((charityTab) => {
    charityTab.addEventListener('click', (event)=>{
      removeActiveTabs();
      activateCurrentTab(event);
      hideAllPages();
      showCurrentPage(event);
    });
  });
};

export { initTabs };
