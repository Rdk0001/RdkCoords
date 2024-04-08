window.addEventListener('message', (event) => {
    let data = event.data

    if  ( data.action == 'draw-position') {
        let div = document.querySelector('.current-position')

        div.textContent = 'x: ' +  data.position.x + ' y: ' + data.position.y + ' z: ' + data.position.z
    }
})