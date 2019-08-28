import Foundation

public protocol WebRequestManaging {

    typealias SessionApplier = (WebRequest, WebRequestSession) -> (WebRequest)

    var  timeoutInterval: TimeInterval { get }

    var  lastRefresh: TimeInterval { get }

    var  sessionProvider: WebRequestSessionProviding! { get set }

    var  applySession: SessionApplier! { get set }

    func begin(request: WebRequest) throws
}
