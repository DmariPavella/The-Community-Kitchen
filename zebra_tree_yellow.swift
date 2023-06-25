import UIKit

// MARK: - Meal Model
struct Meal {
    var mealName: String
    let ingredients: [String]
    var recipes: [String]
    
    init(mealName: String, ingredients: [String], recipes: [String]) {
        self.mealName = mealName
        self.ingredients = ingredients
        self.recipes = recipes
    }
}

// MARK: - Meal Service
class MealService {
    
    // Properties
    static let shared = MealService()
    private init() {}
    var meals: [Meal] = []
    
    // Methods
    func fetchMeals() {
        // Fetch meal data from remote server
        // Assign meal data to the meals arrays
    }
    
    func addMeal(mealName: String, ingredients: [String], recipes: [String]) {
        meals.append(Meal(mealName: mealName, ingredients: ingredients, recipes: recipes))
    }
    
    func update(_ meal: Meal, name: String? = nil, ingredients: [String]? = nil, recipes: [String]? = nil) {
        guard let index = meals.firstIndex(of: meal) else {
            return
        }
        if let mealName = name {
            meals[index].mealName = mealName
        }
        if let mealIngredients = ingredients {
            meals[index].ingredients = mealIngredients
        }
        if let mealRecipes = recipes {
            meals[index].recipes = mealRecipes
        }
    }
    
    func delete(_ meal: Meal) {
        if let index = meals.firstIndex(of: meal) {
            meals.remove(at: index)
        }
    }
}

// MARK: - Healthy Meal Service
class HealthyMealService {
    
    // Properties
    static let shared = HealthyMealService()
    private init() {}
    var healthyMeals: [Meal] = []
    
    // Methods
    func fetchHealthyMeals() {
        // Fetch meal data from remote server
        // Assign only healthy meal data to the healthyMeals array
    }
    
    func addHealthyMeal(mealName: String, ingredients: [String], recipes: [String]) {
        healthyMeals.append(Meal(mealName: mealName, ingredients: ingredients, recipes: recipes))
    }
    
    func update(_ healthyMeal: Meal, name: String? = nil, ingredients: [String]? = nil, recipes: [String]? = nil) {
        guard let index = healthyMeals.firstIndex(of: healthyMeal) else {
            return
        }
        if let mealName = name {
            healthyMeals[index].mealName = mealName
        }
        if let healthyMealIngredients = ingredients {
            healthyMeals[index].ingredients = healthyMealIngredients
        }
        if let healthyMealRecipes = recipes {
            healthyMeals[index].recipes = healthyMealRecipes
        }
    }
    
    func delete(_ healthyMeal: Meal) {
        if let index = healthyMeals.firstIndex(of: healthyMeal) {
            healthyMeals.remove(at: index)
        }
    }
}

// MARK: - Meal Planner
class MealPlanner {
    
    static let shared = MealPlanner()
    private init() {}
    
    // Properties
    var mealPlans: [Meal] = []
    var isHealthyOptionSelected: Bool = false
    
    // Methods
    func planMeals(isHealthyOptionSelected: Bool) {
        // Get meals from MealService or HealthyMealService based on isHealthyOptionSelected
        
        if isHealthyOptionSelected == true {
            mealPlans = HealthyMealService.shared.healthyMeals
        } else {
            mealPlans = MealService.shared.meals
        }
    }
    
    func provideMeals(numberOfMeals: Int) -> [Meal] {
        var mealsForProviding: [Meal] = []
        
        for _ in 1...numberOfMeals {
            mealsForProviding.append(mealPlans.randomElement()!)
        }
        
        return mealsForProviding
    }
}

// MARK: - Delivery Service
class DeliveryService {
    
    // Properties
    static let shared = DeliveryService()
    private init() {}
    
    // Methods
    func deliverMeals(_ meals: [Meal]) {
        // Deliver meals to individuals and families in need
    }
}

// MARK: - Notification Service
class NotificationService {
    
    // Properties
    static let shared = NotificationService()
    private init() {}
    
    // Methods
    func notifyDeliveredMeals(_ meals: [Meal]) {
        // Notify the individuals or families about the delivered meals
    }
}