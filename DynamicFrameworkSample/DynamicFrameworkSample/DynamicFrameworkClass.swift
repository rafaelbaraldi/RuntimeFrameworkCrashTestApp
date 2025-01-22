
import DependencyAsPod

public class DynamicFrameworkClass {
    
    public static func getDefaultText() -> String {
        return "DynamicFrameworkClass.getDefaultText(dependency: \(DependencyAsPodClass.getDependencyDefaultText())"
    }
}
