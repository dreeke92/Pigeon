// const imageUrlElement = document.getElementById('post_image_url');
// const mediaPreview = document.querySelector('.charity-post-media-preview');

// function clearMediaPreview(){
//   mediaPreview.innerHTML = '';
// }

// function showImagePreview(imageUrl) {
//   mediaPreview.innerHTML = `<img src='${imageUrl}'>`
// }

// function showImageUrl() {
//   imageUrlElement.style.display = 'block';
// };
// function hideImageUrl() {
//   imageUrlElement.style.display = 'none';
// };

// function imageHandler(){
//   imageUrlElement.addEventListener('keyup', (event)=>{
//     if (event.keyCode == 86) {
//       clearMediaPreview();
//       const imageUrl = event.target.value;
//       showImagePreview(imageUrl);
//     };
//     if (event.keyCode == 8) {
//       if (imageUrlElement.value == ''){
//         clearMediaPreview();
//       }
//     };
//   });
// };

function initPostImage(){
  // imageHandler();
};

export { initPostImage };
