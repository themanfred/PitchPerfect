import "bootstrap";


// And their styles (for UI plugins)
require('@uppy/core/dist/style.css')
require('@uppy/dashboard/dist/style.css')

const Uppy = require('@uppy/core')
const Dashboard = require('@uppy/dashboard')
const Webcam = require('@uppy/webcam')
const Tus = require('@uppy/tus')

const uppy = Uppy({
  debug: true,
  autoProceed: false,
  restrictions: {
    maxFileSize: 10000000000000,
    allowedFileTypes: ['image/*', 'video/*']
  }
})
.use(Dashboard, {
  trigger: '.UppyModalOpenerBtn',
  inline: true,
  target: '.DashboardContainer',
  replaceTargetContent: true,
  showProgressDetails: true,

  height: 470,
  metaFields: [
    { id: 'name', name: 'Name', placeholder: 'file name' },
    { id: 'caption', name: 'Caption', placeholder: 'describe what the image is about' }
  ],
  browserBackButtonClose: true
})
.use(Webcam, { target: Dashboard })
.use(Tus, { endpoint: 'https://master.tus.io/files/' })

uppy.on('complete', result => {
  console.log('successful files:', result.successful)
  console.log('failed files:', result.failed)
})
