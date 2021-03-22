const { ipcRenderer, contextBridge } = require('electron')

contextBridge.exposeInMainWorld(
  'app',
  {
    connect: (flag) => ipcRenderer.invoke('connect', flag),

  }
)