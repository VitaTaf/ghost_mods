.class public Landroid/media/AudioService$AudioPolicyProxy;
.super Landroid/media/audiopolicy/AudioPolicyConfig;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioPolicyProxy"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioPolicyProxy"


# instance fields
.field mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

.field mFocusDuckBehavior:I

.field mHasFocusListener:Z

.field mPolicyToken:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V
    .locals 3
    .param p2, "config"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p3, "token"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p4, "hasFocusListener"    # Z

    .prologue
    .line 5859
    iput-object p1, p0, Landroid/media/AudioService$AudioPolicyProxy;->this$0:Landroid/media/AudioService;

    .line 5860
    invoke-direct {p0, p2}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Landroid/media/audiopolicy/AudioPolicyConfig;)V

    .line 5856
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 5861
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioPolicyConfig;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":ap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # operator++ for: Landroid/media/AudioService;->mAudioPolicyCounter:I
    invoke-static {p1}, Landroid/media/AudioService;->access$10008(Landroid/media/AudioService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/media/AudioService$AudioPolicyProxy;->setRegistration(Ljava/lang/String;)V

    .line 5862
    iput-object p3, p0, Landroid/media/AudioService$AudioPolicyProxy;->mPolicyToken:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 5863
    iput-boolean p4, p0, Landroid/media/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    .line 5864
    iget-boolean v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    if-eqz v0, :cond_0

    .line 5865
    # getter for: Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;
    invoke-static {p1}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$AudioPolicyProxy;->mPolicyToken:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaFocusControl;->addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 5867
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioService$AudioPolicyProxy;->connectMixes()V

    .line 5868
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 5871
    iget-object v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$7400(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 5872
    :try_start_0
    const-string v0, "AudioPolicyProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService$AudioPolicyProxy;->mPolicyToken:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5873
    invoke-virtual {p0}, Landroid/media/AudioService$AudioPolicyProxy;->release()V

    .line 5874
    iget-object v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$7400(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Landroid/media/AudioService$AudioPolicyProxy;->mPolicyToken:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5875
    monitor-exit v1

    .line 5876
    return-void

    .line 5875
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method connectMixes()V
    .locals 2

    .prologue
    .line 5893
    iget-object v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 5894
    return-void
.end method

.method getRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5879
    invoke-virtual {p0}, Landroid/media/AudioService$AudioPolicyProxy;->getRegistration()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5883
    iget v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5884
    iget-object v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;
    invoke-static {v0}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 5886
    :cond_0
    iget-boolean v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    if-eqz v0, :cond_1

    .line 5887
    iget-object v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;
    invoke-static {v0}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$AudioPolicyProxy;->mPolicyToken:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaFocusControl;->removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 5889
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 5890
    return-void
.end method
