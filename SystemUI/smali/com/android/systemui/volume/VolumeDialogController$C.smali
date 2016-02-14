.class final Lcom/android/systemui/volume/VolumeDialogController$C;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "C"
.end annotation


# instance fields
.field private final mCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/volume/VolumeDialogController$Callbacks;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$C;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$C;->mCallbackMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p2, "x1"    # Lcom/android/systemui/volume/VolumeDialogController$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController$C;-><init>(Lcom/android/systemui/volume/VolumeDialogController;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/volume/VolumeDialogController$Callbacks;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogController$C$5;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/volume/VolumeDialogController$C$5;-><init>(Lcom/android/systemui/volume/VolumeDialogController$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogController$C$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogController$C$2;-><init>(Lcom/android/systemui/volume/VolumeDialogController$C;Ljava/util/Map$Entry;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogController$C$4;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogController$C$4;-><init>(Lcom/android/systemui/volume/VolumeDialogController$C;Ljava/util/Map$Entry;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public onScreenOff()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogController$C$8;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/volume/VolumeDialogController$C$8;-><init>(Lcom/android/systemui/volume/VolumeDialogController$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public onShowRequested(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogController$C$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogController$C$1;-><init>(Lcom/android/systemui/volume/VolumeDialogController$C;Ljava/util/Map$Entry;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogController$C$9;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogController$C$9;-><init>(Lcom/android/systemui/volume/VolumeDialogController$C;Ljava/util/Map$Entry;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public onShowSilentHint()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogController$C$7;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/volume/VolumeDialogController$C$7;-><init>(Lcom/android/systemui/volume/VolumeDialogController$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogController$C$6;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/volume/VolumeDialogController$C$6;-><init>(Lcom/android/systemui/volume/VolumeDialogController$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 7
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, "time":J
    invoke-virtual {p1}, Lcom/android/systemui/volume/VolumeDialogController$State;->copy()Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v0

    .local v0, "copy":Lcom/android/systemui/volume/VolumeDialogController$State;
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/volume/VolumeDialogController$C$3;

    invoke-direct {v6, p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogController$C$3;-><init>(Lcom/android/systemui/volume/VolumeDialogController$C;Ljava/util/Map$Entry;Lcom/android/systemui/volume/VolumeDialogController$State;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    :cond_0
    invoke-static {v4, v5, v0}, Lcom/android/systemui/volume/Events;->writeState(JLcom/android/systemui/volume/VolumeDialogController$State;)V

    return-void
.end method
