.class Landroid/support/v4/view/GravityCompatJellybeanMr1;
.super Ljava/lang/Object;
.source "GravityCompatJellybeanMr1.java"


# direct methods
.method public static getAbsoluteGravity(II)I
    .locals 1
    .param p0, "gravity"    # I
    .param p1, "layoutDirection"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    return v0
.end method
