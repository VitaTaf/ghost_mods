.class Lcom/motorola/android/effects/MMIEqualizer$BaseParameterListener;
.super Ljava/lang/Object;
.source "MMIEqualizer.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/effects/MMIEqualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/effects/MMIEqualizer;


# direct methods
.method private constructor <init>(Lcom/motorola/android/effects/MMIEqualizer;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/motorola/android/effects/MMIEqualizer$BaseParameterListener;->this$0:Lcom/motorola/android/effects/MMIEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/effects/MMIEqualizer;Lcom/motorola/android/effects/MMIEqualizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/android/effects/MMIEqualizer;
    .param p2, "x1"    # Lcom/motorola/android/effects/MMIEqualizer$1;

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/motorola/android/effects/MMIEqualizer$BaseParameterListener;-><init>(Lcom/motorola/android/effects/MMIEqualizer;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 9
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 406
    const/4 v0, 0x0

    .line 408
    .local v0, "l":Lcom/motorola/android/effects/MMIEqualizer$OnParameterChangeListener;
    iget-object v1, p0, Lcom/motorola/android/effects/MMIEqualizer$BaseParameterListener;->this$0:Lcom/motorola/android/effects/MMIEqualizer;

    # getter for: Lcom/motorola/android/effects/MMIEqualizer;->mParamListenerLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/motorola/android/effects/MMIEqualizer;->access$000(Lcom/motorola/android/effects/MMIEqualizer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/effects/MMIEqualizer$BaseParameterListener;->this$0:Lcom/motorola/android/effects/MMIEqualizer;

    # getter for: Lcom/motorola/android/effects/MMIEqualizer;->mParamListener:Lcom/motorola/android/effects/MMIEqualizer$OnParameterChangeListener;
    invoke-static {v1}, Lcom/motorola/android/effects/MMIEqualizer;->access$100(Lcom/motorola/android/effects/MMIEqualizer;)Lcom/motorola/android/effects/MMIEqualizer$OnParameterChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/motorola/android/effects/MMIEqualizer$BaseParameterListener;->this$0:Lcom/motorola/android/effects/MMIEqualizer;

    # getter for: Lcom/motorola/android/effects/MMIEqualizer;->mParamListener:Lcom/motorola/android/effects/MMIEqualizer$OnParameterChangeListener;
    invoke-static {v1}, Lcom/motorola/android/effects/MMIEqualizer;->access$100(Lcom/motorola/android/effects/MMIEqualizer;)Lcom/motorola/android/effects/MMIEqualizer$OnParameterChangeListener;

    move-result-object v0

    .line 412
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    if-eqz v0, :cond_3

    .line 414
    const/4 v3, -0x1

    .line 415
    .local v3, "p1":I
    const/4 v4, -0x1

    .line 416
    .local v4, "p2":I
    const/4 v5, -0x1

    .line 418
    .local v5, "v":I
    array-length v1, p3

    if-lt v1, v7, :cond_1

    .line 419
    invoke-static {p3, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v3

    .line 420
    array-length v1, p3

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 421
    invoke-static {p3, v7}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v4

    .line 424
    :cond_1
    array-length v1, p4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 425
    invoke-static {p4, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v5

    .line 430
    :cond_2
    :goto_0
    if-eq v3, v8, :cond_3

    if-eq v5, v8, :cond_3

    .line 431
    iget-object v1, p0, Lcom/motorola/android/effects/MMIEqualizer$BaseParameterListener;->this$0:Lcom/motorola/android/effects/MMIEqualizer;

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/motorola/android/effects/MMIEqualizer$OnParameterChangeListener;->onParameterChange(Lcom/motorola/android/effects/MMIEqualizer;IIII)V

    .line 434
    .end local v3    # "p1":I
    .end local v4    # "p2":I
    .end local v5    # "v":I
    :cond_3
    return-void

    .line 412
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 426
    .restart local v3    # "p1":I
    .restart local v4    # "p2":I
    .restart local v5    # "v":I
    :cond_4
    array-length v1, p4

    if-ne v1, v7, :cond_2

    .line 427
    invoke-static {p4, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v5

    goto :goto_0
.end method
