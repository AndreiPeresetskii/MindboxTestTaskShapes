using MindboxShapes.Shapes;

namespace Facts;

public class UnitFact1
{
    [Fact]
    public void CircleAreaFact()
    {
        Circle circle = new(10);
        Assert.Equal(Math.PI * 100, circle.CalculateArea(), precision: 5);
    }

    [Fact]
    public void TriangleAreaFact()
    {
        Triangle triangle = new(3, 4, 5);
        Assert.Equal(6, triangle.CalculateArea(), precision: 5);
    }

    [Fact]
    public void RightTriangleFact()
    {
        Triangle triangle = new(3, 4, 5);
        Assert.True(triangle.IsRightTriangle());
    }

    [Fact]
    public void NotRightTriangleFact()
    {
        Triangle triangle = new(3, 4, 6);
        Assert.False(triangle.IsRightTriangle());
    }

    [Fact]
    public void InvalidTriangleFact()
    {
        Assert.Throws<ArgumentException>(() => new Triangle(1, 2, 3));
    }

    [Fact]
    public void InvalidCircleFact()
    {
        Assert.Throws<ArgumentException>(() => new Circle(-5));
    }

}