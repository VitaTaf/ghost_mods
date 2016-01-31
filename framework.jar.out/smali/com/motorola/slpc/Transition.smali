.class public Lcom/motorola/slpc/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/slpc/Transition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfidence:I

.field private mErTime:J

.field private mNewState:I

.field private mOldState:I

.field private mPast:Z

.field private mUtcTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/motorola/slpc/Transition$1;

    invoke-direct {v0}, Lcom/motorola/slpc/Transition$1;-><init>()V

    sput-object v0, Lcom/motorola/slpc/Transition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/slpc/Transition;->mUtcTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/slpc/Transition;->mErTime:J

    iput v2, p0, Lcom/motorola/slpc/Transition;->mOldState:I

    iput v2, p0, Lcom/motorola/slpc/Transition;->mNewState:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/motorola/slpc/Transition;->mConfidence:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/slpc/Transition;->mPast:Z

    return-void
.end method

.method public constructor <init>(JJIIIZ)V
    .locals 1
    .param p1, "utcTime"    # J
    .param p3, "erTime"    # J
    .param p5, "oldState"    # I
    .param p6, "newState"    # I
    .param p7, "confidence"    # I
    .param p8, "past"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/motorola/slpc/Transition;->mUtcTime:J

    iput-wide p3, p0, Lcom/motorola/slpc/Transition;->mErTime:J

    iput p5, p0, Lcom/motorola/slpc/Transition;->mOldState:I

    iput p6, p0, Lcom/motorola/slpc/Transition;->mNewState:I

    iput p7, p0, Lcom/motorola/slpc/Transition;->mConfidence:I

    iput-boolean p8, p0, Lcom/motorola/slpc/Transition;->mPast:Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/slpc/Transition;)V
    .locals 0
    .param p1, "t"    # Lcom/motorola/slpc/Transition;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/motorola/slpc/Transition;->set(Lcom/motorola/slpc/Transition;)V

    return-void
.end method

.method static synthetic access$002(Lcom/motorola/slpc/Transition;J)J
    .locals 1
    .param p0, "x0"    # Lcom/motorola/slpc/Transition;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/motorola/slpc/Transition;->mUtcTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/motorola/slpc/Transition;J)J
    .locals 1
    .param p0, "x0"    # Lcom/motorola/slpc/Transition;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/motorola/slpc/Transition;->mErTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/motorola/slpc/Transition;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/slpc/Transition;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/motorola/slpc/Transition;->mOldState:I

    return p1
.end method

.method static synthetic access$302(Lcom/motorola/slpc/Transition;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/slpc/Transition;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/motorola/slpc/Transition;->mNewState:I

    return p1
.end method

.method static synthetic access$402(Lcom/motorola/slpc/Transition;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/slpc/Transition;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/motorola/slpc/Transition;->mConfidence:I

    return p1
.end method

.method static synthetic access$502(Lcom/motorola/slpc/Transition;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/slpc/Transition;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/motorola/slpc/Transition;->mPast:Z

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getConfidence()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/slpc/Transition;->mConfidence:I

    return v0
.end method

.method public getElapsed()J
    .locals 4

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/motorola/slpc/Transition;->mErTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getNewState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/slpc/Transition;->mNewState:I

    return v0
.end method

.method public getOldState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/slpc/Transition;->mOldState:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/motorola/slpc/Transition;->mUtcTime:J

    return-wide v0
.end method

.method public isPast()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/slpc/Transition;->mPast:Z

    return v0
.end method

.method public set(Lcom/motorola/slpc/Transition;)V
    .locals 2
    .param p1, "t"    # Lcom/motorola/slpc/Transition;

    .prologue
    iget-wide v0, p1, Lcom/motorola/slpc/Transition;->mUtcTime:J

    iput-wide v0, p0, Lcom/motorola/slpc/Transition;->mUtcTime:J

    iget-wide v0, p1, Lcom/motorola/slpc/Transition;->mErTime:J

    iput-wide v0, p0, Lcom/motorola/slpc/Transition;->mErTime:J

    iget v0, p1, Lcom/motorola/slpc/Transition;->mOldState:I

    iput v0, p0, Lcom/motorola/slpc/Transition;->mOldState:I

    iget v0, p1, Lcom/motorola/slpc/Transition;->mNewState:I

    iput v0, p0, Lcom/motorola/slpc/Transition;->mNewState:I

    iget v0, p1, Lcom/motorola/slpc/Transition;->mConfidence:I

    iput v0, p0, Lcom/motorola/slpc/Transition;->mConfidence:I

    iget-boolean v0, p1, Lcom/motorola/slpc/Transition;->mPast:Z

    iput-boolean v0, p0, Lcom/motorola/slpc/Transition;->mPast:Z

    return-void
.end method

.method public setNewState(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    iput p1, p0, Lcom/motorola/slpc/Transition;->mNewState:I

    return-void
.end method

.method public setPast(Z)V
    .locals 0
    .param p1, "past"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/motorola/slpc/Transition;->mPast:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-wide v0, p0, Lcom/motorola/slpc/Transition;->mUtcTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/motorola/slpc/Transition;->mErTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/motorola/slpc/Transition;->mOldState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/slpc/Transition;->mNewState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/slpc/Transition;->mConfidence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/motorola/slpc/Transition;->mPast:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
