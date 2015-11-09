package io.mstream.physics.cucumber

import cucumber.api.java.en.*
import io.mstream.physics.*
import org.assertj.core.api.*
import org.assertj.core.data.*

class StepsDefinition {

    companion object {
        const val vectorRegex = "\\[(-?\\w+),\\s?(-?\\w+)\\]"
    }

    val acceptableResultsOffset = Offset.offset(0.000001)
    var vectors: Map<Char, Vector2d> = emptyMap()

    @Given("Vector '([a-z])' is a zero vector")
    fun zeroVector(vectorName: Char) {
        vectors = vectors.plus(Pair(vectorName, Vector2d.ZERO))
    }

    @Given("Vector '([a-z])' is $vectorRegex")
    fun nonZeroVector(vectorName: Char, xString: String, yString: String) {
        val x = xString.toDouble()
        val y = yString.toDouble()
        vectors = vectors.plus(Pair(vectorName, Vector2d(x, y)))
    }

    @Then("Length of vector '([a-z])' should be (-?\\w+)")
    fun lengthOfVector(vectorName: Char, expectedLengthString: String) {
        val expectedLength = expectedLengthString.toDouble()
        val vector = vectors[vectorName]
                ?: throw notDeclaredException(vectorName)
        Assertions
                .assertThat(vector.length())
                .isCloseTo(expectedLength, acceptableResultsOffset)
    }

    @Then("Inversion of vector '([a-z])' should be $vectorRegex")
    fun inversionOfVector(vectorName: Char, xString: String, yString: String) {
        val x = xString.toDouble()
        val y = yString.toDouble()
        val vector = vectors[vectorName]
                ?: throw notDeclaredException(vectorName)
        val invertedVector = -vector
        assertSimilar(invertedVector, x, y)
    }

    @Then("Product of vector '([a-z])' and (-?\\w+) should be $vectorRegex")
    fun inversionOfVector(
            vectorName: Char,
            scalarString: String,
            xString: String,
            yString: String) {
        val scalar = scalarString.toDouble()
        val x = xString.toDouble()
        val y = yString.toDouble()
        val vector = vectors[vectorName]
                ?: throw notDeclaredException(vectorName)
        val product = vector * scalar
        assertSimilar(product, x, y)
    }

    @Then("Sum of vectors '([a-z])' and '([a-z])' should be $vectorRegex")
    fun inversionOfVector(
            firstVectorName: Char,
            secondVectorName: Char,
            xString: String,
            yString: String) {
        val firstVector = vectors[firstVectorName]
                ?: throw notDeclaredException(firstVectorName)
        val secondVector = vectors[secondVectorName]
                ?: throw notDeclaredException(secondVectorName)
        val x = xString.toDouble()
        val y = yString.toDouble()
        val sum = firstVector + secondVector
        assertSimilar(sum, x, y)
    }

    private fun assertSimilar(sum: Vector2d, x: Double, y: Double) {
        Assertions
                .assertThat(sum.x)
                .isCloseTo(x, acceptableResultsOffset)
        Assertions
                .assertThat(sum.y)
                .isCloseTo(y, acceptableResultsOffset)
    }

    private fun notDeclaredException(vectorName: Char)
            = IllegalArgumentException("no such a vector: $vectorName")
}


