//
// Copyright (c) 2017 AXA Group Solutions.
//
// Licensed under the AXA Group Solutions License (the "License"); you
// may not use this file except in compliance with the License.
// A copy of the License can be found in the LICENSE.TXT file distributed
// together with this file.
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import FBSnapshotTestCase
@testable import STExample

class ProjectTests: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        recordMode = false
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testRedSquare() {
      let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
      
      FBSnapshotVerifyView(viewController.view)
    }
  
    func testLitleDevice() {
      let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
      
      viewController.view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)
      
      FBSnapshotVerifyView(viewController.view)
    }
  
    func testBigDevice() {
      let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
      
      viewController.view.frame = CGRect(x: 0, y: 0, width: 2000, height: 4000)
      
      FBSnapshotVerifyView(viewController.view)
    }
  
}
