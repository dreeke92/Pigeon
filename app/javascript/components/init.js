import { initTabs } from '../components/tabs';
import { initMasonry } from '../components/masonry';
import { initPostImage} from '../components/post-image';
import { initImageUploader} from '../components/image-uploader';

function initComponents (){
  initTabs();
  initMasonry();
  initPostImage();
  initImageUploader();
};

export { initComponents };
