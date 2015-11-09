package io.mstream.physics

data class Vector2d(val x: Double, val y: Double) {

    companion object {
        val ZERO = Vector2d(0.0, 0.0)
    }

    fun length() = Math.sqrt(x * x + y * y)
    operator fun unaryMinus() = Vector2d(-x, -y)
    operator fun times(scalar: Double) = Vector2d(scalar * x, scalar * y)
}
