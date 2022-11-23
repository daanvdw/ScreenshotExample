//
//  ScreenshotExampleTests.swift
//  ScreenshotExampleTests
//
//  Created by Daan van de Westelaken on 23/11/2022.
//

import Quick
import Nimble
import Nimble_Snapshots
@testable import ScreenshotExample

final class ScreenshotExampleTests: QuickSpec {

	private func getSnapshot(_ record: Bool = false) -> Snapshot {

		if record {
			return recordSnapshot(nil, identifier: nil, usesDrawRect: false)
		}

		return snapshot(nil, identifier: nil, usesDrawRect: false)
	}

	override func spec() {

		describe("RightAlignedListTeaser") {

			var sut: UIViewController!

			context("TeaserItem applied") {

				it("should have a test") {

					sut = ViewController()
					sut.loadView()

					expect(sut.snapshotObject) == self.getSnapshot()
				}
			}
		}
	}
}
