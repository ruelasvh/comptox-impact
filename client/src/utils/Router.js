/**
 * Created by vruelasr on 7/7/17.
 */
import { relativePath } from '../App'

export function navigate(options) {
    // Route
    options.routerAction({
        // Routing options
        pathname: `${options.path}`,
        state: options.state
    })
}

export function appPath() {
    return 'http://' + document.location.host + relativePath
}

const Router = {
    navigate,
    appPath
}

export default Router;