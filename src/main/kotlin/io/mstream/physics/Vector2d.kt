package io.mstream.physics

data class Vector2d(val x: Double, val y: Double) {

    companion object {
        val ZERO = Vector2d(0.0, 0.0)
    }

    fun length() = Math.sqrt(x * x + y * y)
    fun normalize() = if (this != ZERO) times(1.0 / length()) else ZERO
    operator fun unaryMinus() = Vector2d(-x, -y)
    operator fun times(scalar: Double) = Vector2d(scalar * x, scalar * y)
    operator fun plus(vector: Vector2d) = Vector2d(x + vector.x, y + vector.y)
    operator fun minus(vector: Vector2d) = Vector2d(x - vector.x, y - vector.y)

}
