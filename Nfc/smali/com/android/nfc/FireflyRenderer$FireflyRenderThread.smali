.class Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;
.super Ljava/lang/Thread;
.source "FireflyRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/FireflyRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FireflyRenderThread"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field volatile mFinished:Z

.field mGL:Ljavax/microedition/khronos/opengles/GL10;

.field mTextureId:I

.field final synthetic this$0:Lcom/android/nfc/FireflyRenderer;


# direct methods
.method private constructor <init>(Lcom/android/nfc/FireflyRenderer;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/FireflyRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/FireflyRenderer;Lcom/android/nfc/FireflyRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/FireflyRenderer;
    .param p2, "x1"    # Lcom/android/nfc/FireflyRenderer$1;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;-><init>(Lcom/android/nfc/FireflyRenderer;)V

    return-void
.end method

.method private checkCurrent()V
    .locals 5

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 354
    new-array v5, v4, [I

    .line 355
    .local v5, "configsCount":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 356
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v0, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/android/nfc/FireflyRenderer;->sEglConfig:[I

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    .line 360
    aget-object v0, v3, v6

    .line 362
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private finishGL()V
    .locals 5

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 344
    iget-object v0, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mFinished:Z

    .line 247
    return-void
.end method

.method initGL()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 292
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 294
    iget-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 295
    iget-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v4, :cond_0

    .line 296
    const-string v2, "NfcFireflyThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglGetDisplay failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 332
    :goto_0
    return v2

    .line 301
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 302
    .local v1, "version":[I
    iget-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 303
    const-string v2, "NfcFireflyThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglInitialize failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 305
    goto :goto_0

    .line 308
    :cond_1
    invoke-direct {p0}, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 309
    iget-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_2

    .line 310
    const-string v2, "NfcFireflyThread"

    const-string v4, "eglConfig not initialized."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 311
    goto :goto_0

    .line 314
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 316
    iget-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v6, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/FireflyRenderer;

    iget-object v6, v6, Lcom/android/nfc/FireflyRenderer;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v2, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 318
    iget-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v4, :cond_4

    .line 319
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 320
    .local v0, "error":I
    const-string v2, "NfcFireflyThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createWindowSurface returned error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 321
    goto/16 :goto_0

    .line 324
    .end local v0    # "error":I
    :cond_4
    iget-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 325
    const-string v2, "NfcFireflyThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglMakeCurrent failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 327
    goto/16 :goto_0

    .line 330
    :cond_5
    iget-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v2, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 332
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method loadStarTexture()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 250
    new-array v3, v6, [I

    .line 251
    .local v3, "textureIds":[I
    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v4, v6, v3, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 252
    aget v4, v3, v5

    iput v4, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mTextureId:I

    .line 254
    const/4 v2, 0x0

    .line 257
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/FireflyRenderer;

    iget-object v4, v4, Lcom/android/nfc/FireflyRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "star.png"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 259
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0xde1

    iget v6, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mTextureId:I

    invoke-interface {v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 262
    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0xde1

    const/16 v6, 0x2801

    const/16 v7, 0x2601

    invoke-interface {v4, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 263
    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0xde1

    const/16 v6, 0x2800

    const/16 v7, 0x2601

    invoke-interface {v4, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 265
    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 267
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    if-eqz v2, :cond_0

    .line 274
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 278
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "NfcFireflyThread"

    const-string v5, "IOException opening assets."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    if-eqz v2, :cond_0

    .line 274
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 275
    :catch_1
    move-exception v4

    goto :goto_0

    .line 272
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 274
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 275
    :cond_1
    :goto_1
    throw v4

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public run()V
    .locals 20

    .prologue
    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->initGL()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    const-string v2, "NfcFireflyThread"

    const-string v3, "Failed to initialize OpenGL."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->loadStarTexture()V

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/FireflyRenderer;

    iget v5, v5, Lcom/android/nfc/FireflyRenderer;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/FireflyRenderer;

    iget v6, v6, Lcom/android/nfc/FireflyRenderer;->mDisplayHeight:I

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x1701

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/FireflyRenderer;

    iget v3, v3, Lcom/android/nfc/FireflyRenderer;->mDisplayWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/FireflyRenderer;

    iget v4, v4, Lcom/android/nfc/FireflyRenderer;->mDisplayWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/FireflyRenderer;

    iget v5, v5, Lcom/android/nfc/FireflyRenderer;->mDisplayHeight:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/FireflyRenderer;

    iget v6, v6, Lcom/android/nfc/FireflyRenderer;->mDisplayHeight:I

    neg-int v6, v6

    int-to-float v6, v6

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-interface/range {v2 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x1700

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xc50

    const/16 v4, 0x1102

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/FireflyRenderer;

    iget-object v9, v2, Lcom/android/nfc/FireflyRenderer;->mFireflies:[Lcom/android/nfc/FireflyRenderer$Firefly;

    .local v9, "arr$":[Lcom/android/nfc/FireflyRenderer$Firefly;
    array-length v15, v9

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    if-ge v14, v15, :cond_1

    aget-object v12, v9, v14

    .line 197
    .local v12, "firefly":Lcom/android/nfc/FireflyRenderer$Firefly;
    invoke-virtual {v12}, Lcom/android/nfc/FireflyRenderer$Firefly;->reset()V

    .line 196
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 200
    .end local v12    # "firefly":Lcom/android/nfc/FireflyRenderer$Firefly;
    :cond_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    const/4 v2, 0x3

    if-ge v13, v2, :cond_3

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x4000

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 205
    const-string v2, "NfcFireflyThread"

    const-string v3, "Could not swap buffers"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mFinished:Z

    .line 200
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 210
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 212
    .local v16, "startTime":J
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mFinished:Z

    if-nez v2, :cond_6

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v18, v2, v16

    .line 214
    .local v18, "timeElapsedMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->checkCurrent()V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x4000

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xde1

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xbe2

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x302

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->this$0:Lcom/android/nfc/FireflyRenderer;

    iget-object v9, v2, Lcom/android/nfc/FireflyRenderer;->mFireflies:[Lcom/android/nfc/FireflyRenderer$Firefly;

    array-length v15, v9

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v15, :cond_4

    aget-object v12, v9, v14

    .line 226
    .restart local v12    # "firefly":Lcom/android/nfc/FireflyRenderer$Firefly;
    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lcom/android/nfc/FireflyRenderer$Firefly;->updatePositionAndScale(J)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v12, v2}, Lcom/android/nfc/FireflyRenderer$Firefly;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 225
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 230
    .end local v12    # "firefly":Lcom/android/nfc/FireflyRenderer$Firefly;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 231
    const-string v2, "NfcFireflyThread"

    const-string v3, "Could not swap buffers"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->mFinished:Z

    .line 235
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v10, v2, v16

    .line 237
    .local v10, "elapsed":J
    const-wide/16 v2, 0x1e

    sub-long/2addr v2, v10

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 238
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 242
    .end local v10    # "elapsed":J
    .end local v18    # "timeElapsedMs":J
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->finishGL()V

    goto/16 :goto_0
.end method
