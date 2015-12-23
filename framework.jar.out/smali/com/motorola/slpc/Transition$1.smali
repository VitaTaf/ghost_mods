.class final Lcom/motorola/slpc/Transition$1;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/slpc/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/motorola/slpc/Transition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/slpc/Transition;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 162
    new-instance v0, Lcom/motorola/slpc/Transition;

    invoke-direct {v0}, Lcom/motorola/slpc/Transition;-><init>()V

    .line 163
    .local v0, "t":Lcom/motorola/slpc/Transition;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/motorola/slpc/Transition;->mUtcTime:J
    invoke-static {v0, v2, v3}, Lcom/motorola/slpc/Transition;->access$002(Lcom/motorola/slpc/Transition;J)J

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/motorola/slpc/Transition;->mErTime:J
    invoke-static {v0, v2, v3}, Lcom/motorola/slpc/Transition;->access$102(Lcom/motorola/slpc/Transition;J)J

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Lcom/motorola/slpc/Transition;->mOldState:I
    invoke-static {v0, v2}, Lcom/motorola/slpc/Transition;->access$202(Lcom/motorola/slpc/Transition;I)I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Lcom/motorola/slpc/Transition;->mNewState:I
    invoke-static {v0, v2}, Lcom/motorola/slpc/Transition;->access$302(Lcom/motorola/slpc/Transition;I)I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    # setter for: Lcom/motorola/slpc/Transition;->mConfidence:I
    invoke-static {v0, v2}, Lcom/motorola/slpc/Transition;->access$402(Lcom/motorola/slpc/Transition;I)I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    # setter for: Lcom/motorola/slpc/Transition;->mPast:Z
    invoke-static {v0, v1}, Lcom/motorola/slpc/Transition;->access$502(Lcom/motorola/slpc/Transition;Z)Z

    .line 169
    return-object v0

    .line 168
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/motorola/slpc/Transition$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/slpc/Transition;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/slpc/Transition;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 173
    new-array v0, p1, [Lcom/motorola/slpc/Transition;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/motorola/slpc/Transition$1;->newArray(I)[Lcom/motorola/slpc/Transition;

    move-result-object v0

    return-object v0
.end method
