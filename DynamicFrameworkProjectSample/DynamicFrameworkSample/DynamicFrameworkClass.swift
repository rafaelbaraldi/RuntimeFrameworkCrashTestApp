
import TransitiveDependency

public class DynamicFrameworkClass {
    
    public static func getDefaultText() -> String {
        return "DynamicFrameworkClass.getDefaultText(dependency: \(TransitiveDependencyClass.getDependencyDefaultText())"
    }
}
