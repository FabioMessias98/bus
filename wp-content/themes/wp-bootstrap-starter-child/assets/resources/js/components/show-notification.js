(function() {
    if( document.querySelector( '.js-business-day' ) ) {
        const days = document.getElementsByClassName( 'js-business-day' )
        let data = new Date()
        let hour = data.getHours()
        let minutes = data.getMinutes()
        let hourCurrent = `${hour}:${minutes}`

        if( minutes < 10 )
            minutes = '0' + minutes
        
        for( const i of days ) {
            if( i.innerText == hourCurrent ) {
                setTimeout(function() {
                    showNotification(i.dataset.value, hourCurrent, i.dataset.sense)
                }, 1000)
            }
        }
    }

    function showNotification(bus, hour, sense) {
        let notificationGoing = document.querySelector( '.js-notification-going' )
        let notificationReturn = document.querySelector( '.js-notification-return' )

        if( sense == 'ida' ) {
            notificationGoing.insertAdjacentHTML('afterbegin', '<p class="u-font-size-16 u-font-weight-bold text-center text-uppercase u-color-folk-white">' + bus + ' - ' + hour + ' - ' + sense +'</p>')
            notificationGoing.classList.add( 'is-active' )
        } else {
            notificationReturn.insertAdjacentHTML('afterbegin', '<p class="u-font-size-16 u-font-weight-bold text-center text-uppercase u-color-folk-white">' + bus + ' - ' + hour + ' - ' + sense +'</p>')
            notificationReturn.classList.add( 'is-active' )
        }
    }
})()