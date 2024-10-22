import { library } from '@fortawesome/fontawesome-svg-core'
import { faArrowRightToBracket, faArrowsRotate  } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import { faCoffee, faMagnifyingGlass, faBell  } from '@fortawesome/free-solid-svg-icons'
import { faHouse, faUser, faFloppyDisk  } from '@fortawesome/free-solid-svg-icons'; // Import specific icon
import { faTelegram } from '@fortawesome/free-brands-svg-icons'
import { faCheck } from '@fortawesome/free-solid-svg-icons'



// Kutubxonaga ikonka qo'shish
library.add(faArrowRightToBracket);
library.add(faCoffee)
library.add(faHouse)
library.add(faArrowsRotate)
library.add(faMagnifyingGlass);
library.add(faBell);
library.add(faUser);
library.add(faTelegram );
library.add(faCheck);
library.add(faFloppyDisk);
export default FontAwesomeIcon;