package io.mstream.physics

data class Vector2d(val x: Double, val y: Double) {

    companion object {
        val ZERO = Vector2d(0.0, 0.0)
    }

    fun length() = Math.sqrt(x * x + y * y)
}
