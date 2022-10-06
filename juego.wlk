import wollok.game.*
import visuales.*

object juego {

	const anchoTotal = 17
	const altoTotal = 5

	method inicio() {
		game.clear()
		game.title("aventuras carpinchonescas")
		game.width(anchoTotal)
		game.height(altoTotal)
		game.addVisual(inicioDelJuego)
		game.addVisual(carpincho)
		keyboard.space().onPressDo{ self.limpiarTablero()}
		game.start()
	}

	method finalizarJuego() {
		keyboard.control().onPressDo{ game.stop()}
	}

	method limpiarTablero() {
		game.clear()
	}

}

