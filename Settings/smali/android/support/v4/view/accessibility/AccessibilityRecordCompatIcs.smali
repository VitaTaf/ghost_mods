.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompatIcs.java"


# direct methods
.method public static obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    return-object v0
.end method

.method public static setFromIndex(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "fromIndex"    # I

    .prologue
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0    # "record":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    return-void
.end method

.method public static setItemCount(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "itemCount"    # I

    .prologue
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0    # "record":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    return-void
.end method

.method public static setScrollable(Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "scrollable"    # Z

    .prologue
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0    # "record":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    return-void
.end method

.method public static setToIndex(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "toIndex"    # I

    .prologue
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0    # "record":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    return-void
.end method
