package com.example.androidpourmistral

import org.junit.Assert.assertEquals
import org.junit.Test

class GreetingTest {
    @Test
    fun greeting_returnsCorrectMessage() {
        val expected = "Hello, Android pour Mistral!"
        val actual = createGreetingMessage("Android pour Mistral")
        assertEquals(expected, actual)
    }

    @Test
    fun greeting_returnsCorrectMessageForEmptyName() {
        val expected = "Hello, !"
        val actual = createGreetingMessage("")
        assertEquals(expected, actual)
    }

    @Test
    fun greeting_returnsCorrectMessageForMistral() {
        val expected = "Hello, Mistral!"
        val actual = createGreetingMessage("Mistral")
        assertEquals(expected, actual)
    }

    // Helper function to test the greeting logic
    private fun createGreetingMessage(name: String): String {
        return "Hello, $name!"
    }
}
