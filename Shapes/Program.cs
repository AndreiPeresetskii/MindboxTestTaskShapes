using MindboxShapes.Shapes;

namespace MindboxShapes;

class Program
{
    static void Main(string[] args)
    {
        IShape circle = ShapeFactory.CreateCircle(5);
        Console.WriteLine($"Площадь круга: {circle.CalculateArea()}");

        IShape triangle = ShapeFactory.CreateTriangle(3, 4, 5);
        Console.WriteLine($"Площадь треугольника: {triangle.CalculateArea()}");

        if (triangle is Triangle specificTriangle)
            Console.WriteLine($"Треугольник прямоугольный: {specificTriangle.IsRightTriangle()}");
    }
}
