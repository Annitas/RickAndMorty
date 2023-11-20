
import Foundation

/// Manages in memory session scoped API caches
final class RMAPICacheManager {
    // API URL: Data
    private var cacheDictionary: [
        RMEndPoint:NSCache<NSString, NSData>
    ] = [:]
    
    private var cache = NSCache<NSString, NSData>()
    init() {
        setUpCache()
    }
    
    public func cacheResponse(forEndpoint endpoint: RMEndPoint, url: URL?) -> Data? {
        guard let targetCache = cacheDictionary[endpoint], let url = url else {
            return nil
        }
        let key = url.absoluteString as NSString
        return targetCache.object(forKey: key) as? Data
    }
    
    public func setCache(forEndpoint endpoint: RMEndPoint, url: URL?, data: Data) {
        guard let targetCache = cacheDictionary[endpoint], let url = url else {
            return
        }
        let key = url.absoluteString as NSString
        targetCache.setObject(data as NSData, forKey: key)
    }
    
    private func setUpCache() {
        RMEndPoint.allCases.forEach { endpoint in
            cacheDictionary[endpoint] = NSCache<NSString, NSData>()
        }
    }
}
