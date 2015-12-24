.class public Lcom/google/android/gms/internal/jr;
.super Ljava/lang/Object;


# static fields
.field public static HU:Z


# direct methods
.method public static final isLoggable(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "level"    # I

    .prologue
    sget-boolean v0, Lcom/google/android/gms/internal/jr;->HU:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
