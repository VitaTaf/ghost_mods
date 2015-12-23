.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .param p2, "c"    # Landroid/hardware/Camera;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1106
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 1107
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1108
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 1109
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1113
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1201
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1115
    :sswitch_0
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1116
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 1121
    :sswitch_1
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1122
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 1127
    :sswitch_2
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1128
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 1133
    :sswitch_3
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v4}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v1

    .line 1134
    .local v1, "pCb":Landroid/hardware/Camera$PreviewCallback;
    if-eqz v1, :cond_0

    .line 1135
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOneShot:Z
    invoke-static {v4}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1139
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v4, 0x0

    # setter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v3, v4}, Landroid/hardware/Camera;->access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 1146
    :cond_1
    :goto_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v1, v3, v4}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 1140
    :cond_2
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mWithBuffer:Z
    invoke-static {v4}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1144
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # invokes: Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V
    invoke-static {v4, v3, v2}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;ZZ)V

    goto :goto_1

    .line 1151
    .end local v1    # "pCb":Landroid/hardware/Camera$PreviewCallback;
    :sswitch_4
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1152
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1157
    :sswitch_5
    const/4 v0, 0x0

    .line 1158
    .local v0, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;
    invoke-static {v4}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1159
    :try_start_0
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v0

    .line 1160
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    if-eqz v0, :cond_0

    .line 1162
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_3

    .line 1163
    .local v2, "success":Z
    :goto_2
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v2, v3}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1160
    .end local v2    # "success":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_3
    move v2, v3

    .line 1162
    goto :goto_2

    .line 1168
    .end local v0    # "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :sswitch_6
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v4}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1169
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v4}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_4

    :goto_3
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v5, v3, v6}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_4
    move v3, v2

    goto :goto_3

    .line 1174
    :sswitch_7
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1175
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Landroid/hardware/Camera$Face;

    check-cast v3, [Landroid/hardware/Camera$Face;

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1181
    :sswitch_8
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mEnvDetectCallback:Landroid/hardware/Camera$EnvDetectCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$EnvDetectCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1182
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mEnvDetectCallback:Landroid/hardware/Camera$EnvDetectCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$EnvDetectCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v4, v5, v6}, Landroid/hardware/Camera$EnvDetectCallback;->onEnvDetectEvent(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1188
    :sswitch_9
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1190
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v4, v5}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1195
    :sswitch_a
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static {v4}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1196
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static {v4}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_5

    :goto_4
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v2, v3}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_5
    move v2, v3

    goto :goto_4

    .line 1113
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_a
        0x8000 -> :sswitch_8
    .end sparse-switch
.end method
