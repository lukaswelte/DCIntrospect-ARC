//
//  DCTextView.m
//  Pods
//
//  Created by Mikkel Selsøe Sørensen on 29/10/13.
//
//

#import "DCTextView.h"
#import "DCIntrospectSettings.h"

@implementation DCTextView

#ifdef __IPHONE_7_0

- (NSArray *)keyCommands {
    return @[[UIKeyCommand keyCommandWithInput:kDCIntrospectKeysInvoke modifierFlags:0 action:@selector(invoke)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysToggleViewOutlines modifierFlags:0 action:@selector(toggleViewOutlines)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysToggleNonOpaqueViews modifierFlags:0 action:@selector(toggleNonOpaqueViews)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysToggleHelp modifierFlags:0 action:@selector(toggleHelp)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysToggleFlashViewRedraws modifierFlags:0 action:@selector(toggleFlashViewRedraws)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysToggleShowCoordinates modifierFlags:0 action:@selector(toggleShowCoordinates)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysEnterBlockMode modifierFlags:0 action:@selector(enterBlockMode)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysNudgeViewLeft modifierFlags:0 action:@selector(nudgeViewLeft)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysNudgeViewRight modifierFlags:0 action:@selector(nudgeViewRight)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysNudgeViewUp modifierFlags:0 action:@selector(nudgeViewUp)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysNudgeViewDown modifierFlags:0 action:@selector(nudgeViewDown)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysCenterInSuperview modifierFlags:0 action:@selector(centerInSuperview)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysIncreaseWidth modifierFlags:0 action:@selector(increaseWidth)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysDecreaseWidth modifierFlags:0 action:@selector(decreaseWidth)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysIncreaseHeight modifierFlags:0 action:@selector(increaseHeight)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysDecreaseHeight modifierFlags:0 action:@selector(decreaseHeight)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysLogCodeForCurrentViewChanges modifierFlags:0 action:@selector(logCodeForCurrentViewChanges)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysIncreaseViewAlpha modifierFlags:0 action:@selector(increaseViewAlpha)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysDecreaseViewAlpha modifierFlags:0 action:@selector(decreaseViewAlpha)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysSetNeedsDisplay modifierFlags:0 action:@selector(forceSetNeedsDisplay)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysSetNeedsLayout modifierFlags:0 action:@selector(forceSetNeedsLayout)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysReloadData modifierFlags:0 action:@selector(reloadData)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysLogProperties modifierFlags:0 action:@selector(logProperties)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysLogAccessibilityProperties modifierFlags:0 action:@selector(logAccessibilityProperties)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysLogViewRecursive modifierFlags:0 action:@selector(logViewRecursive)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysExerciseAmbiguityInLayout modifierFlags:0 action:@selector(exerciseAmbiguityInLayout)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysConstraintsAffectingLayoutForAxisX modifierFlags:0 action:@selector(constraintsAffectingLayoutForAxisX)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysConstraintsAffectingLayoutForAxisY modifierFlags:0 action:@selector(constraintsAffectingLayoutForAxisY)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysMoveUpInViewHierarchy modifierFlags:0 action:@selector(moveUpInViewHierarchy)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysMoveBackInViewHierarchy modifierFlags:0 action:@selector(moveBackInViewHierarchy)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysMoveDownToFirstSubview modifierFlags:0 action:@selector(moveDownToFirstSubview)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysMoveToNextSiblingView modifierFlags:0 action:@selector(moveToNextSiblingView)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysMoveToPrevSiblingView modifierFlags:0 action:@selector(moveToPrevSiblingView)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysEnterGDB modifierFlags:0 action:@selector(enterGDB)],
             [UIKeyCommand keyCommandWithInput:kDCIntrospectKeysDisableForPeriod modifierFlags:0 action:@selector(disableForPeriod)],
             ];
}

- (void) invoke {
    [self.keyboardInputDelegate invokeIntrospector];
}

- (void) toggleViewOutlines {
    [self.keyboardInputDelegate toggleOutlines];
}

- (void) toggleNonOpaqueViews {
    [self.keyboardInputDelegate toggleNonOpaqueViews];
}

- (void) toggleHelp {
    [self.keyboardInputDelegate toggleHelp];
}

- (void) toggleFlashViewRedraws {
    [self.keyboardInputDelegate toggleRedrawFlashing];
}

- (void) toggleShowCoordinates {
    [self.keyboardInputDelegate toggleShowCoordinates];
}

- (void) enterBlockMode {
    
}

- (void) nudgeViewLeft {
    [self.keyboardInputDelegate manipulateFrame:FrameManipulationNudgeLeft];
}

- (void) nudgeViewRight {
    [self.keyboardInputDelegate manipulateFrame:FrameManipulationNudgeRight];
}

- (void) nudgeViewUp {
    [self.keyboardInputDelegate manipulateFrame:FrameManipulationNudgeUp];
}

- (void) nudgeViewDown {
    [self.keyboardInputDelegate manipulateFrame:FrameManipulationNudgeDown];
}

- (void) centerInSuperview {
    [self.keyboardInputDelegate manipulateFrame:FrameManipulationCenterInSuperview];
}

- (void) increaseWidth {
    [self.keyboardInputDelegate manipulateFrame:FrameManipulationIncreaseWidth];
}

- (void) decreaseWidth {
    [self.keyboardInputDelegate manipulateFrame:FrameManipulationDecreaseWidth];
}

- (void) increaseHeight {
    [self.keyboardInputDelegate manipulateFrame:FrameManipulationIncreaseHeight];
}

- (void) decreaseHeight {
    [self.keyboardInputDelegate manipulateFrame:FrameManipulationDecreaseHeight];
}

- (void) logCodeForCurrentViewChanges {
    [self.keyboardInputDelegate logCodeForCurrentViewChanges];
}

- (void) increaseViewAlpha {
    [self.keyboardInputDelegate manipulateFrame:FrameManipulationIncreaseAlpha];
}

- (void) decreaseViewAlpha {
    [self.keyboardInputDelegate manipulateFrame:FrameManipulationDecreaseAlpha];
}

- (void) forceSetNeedsDisplay {
    [self.keyboardInputDelegate forceSetNeedsDisplay];
}

- (void) forceSetNeedsLayout {
    [self.keyboardInputDelegate forceSetNeedsLayout];
}

- (void) reloadData {
    [self.keyboardInputDelegate forceReloadOfView];
}

- (void) logProperties {
    [self.keyboardInputDelegate logPropertiesForCurrentView];
}

- (void) logAccessibilityProperties {
    [self.keyboardInputDelegate logAccessabilityPropertiesForCurrentView];
}

- (void) logViewRecursive {
    [self.keyboardInputDelegate logRecursiveDescriptionForCurrentView];
}

- (void) exerciseAmbiguityInLayout {
    [self.keyboardInputDelegate exerciseAmbiguityInLayoutForCurrentView];
}

- (void) constraintsAffectingLayoutForAxisX {
    [self.keyboardInputDelegate logHorizontalConstraintsForCurrentView];
}

- (void) constraintsAffectingLayoutForAxisY {
    [self.keyboardInputDelegate logVerticalConstraintsForCurrentView];
}

- (void) moveUpInViewHierarchy {
    [self.keyboardInputDelegate moveUpInViewHierarchy];
}

- (void) moveBackInViewHierarchy {
    [self.keyboardInputDelegate moveBackInViewHierarchy];
}

- (void) moveDownToFirstSubview {
    [self.keyboardInputDelegate moveDownToFirstSubview];
}

- (void) moveToNextSiblingView {
    [self.keyboardInputDelegate moveToNextSiblingView];
}

- (void) moveToPrevSiblingView {
    [self.keyboardInputDelegate moveToPrevSiblingView];
}

- (void) enterGDB {
    [self.keyboardInputDelegate enterGDB];
}

- (void) disableForPeriod {
    [self.keyboardInputDelegate disableForPeriod];
}

#endif

@end
