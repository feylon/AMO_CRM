import { library } from '@fortawesome/fontawesome-svg-core'
import { faArrowRightToBracket, faArrowsRotate  } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import { faCoffee, faMagnifyingGlass, faBell  } from '@fortawesome/free-solid-svg-icons'
import { faHouse, faUser, faFloppyDisk  } from '@fortawesome/free-solid-svg-icons'; // Import specific icon
import { faTelegram } from '@fortawesome/free-brands-svg-icons'
import { faCheck, faLock, faUnlock, faPen } from '@fortawesome/free-solid-svg-icons'
import { fas } from '@fortawesome/free-solid-svg-icons'; // Solid icons



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
library.add(faLock );
library.add(faUnlock );
library.add(faPen)
library.add(fas)
export default FontAwesomeIcon;