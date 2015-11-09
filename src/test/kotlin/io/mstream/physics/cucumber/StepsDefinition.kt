package io.mstream.physics.cucumber

import cucumber.api.java.en.*
import io.mstream.physics.*
import org.assertj.core.api.*
import org.assertj.core.data.*

class StepsDefinition {

    var vectors: Map<Char, Vector2d> = emptyMap()

    @Given("Vector '([a-z])' is a zero vector")
    fun zeroVector(vectorName: Char) {
        vectors = vectors.plus(Pair(vectorName, Vector2d.ZERO))
    }

    @Given("Vector '([a-z])' is \\[(-?\\w+),\\s?(-?\\w+)\\]")
    fun nonZeroVector(vectorName: Char, xString: String, yString: String) {
        val x = xString.toDouble()
        val y = yString.toDouble()
        vectors = vectors.plus(Pair(vectorName, Vector2d(x, y)))
    }

    @Then("Length of vector '([a-z])' should be (-?\\w+)")
    fun lengthOfVector(vectorName: Char, expectedLengthString: String) {
        val expectedLength = expectedLengthString.toDouble()
        val vector = vectors[vectorName] ?: throw IllegalArgumentException(
                "no such a vector: $vectorName")
        Assertions
                .assertThat(vector.length())
                .isCloseTo(expectedLength, Percentage.withPercentage(0.1))
    }

}

