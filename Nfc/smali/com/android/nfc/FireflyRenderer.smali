.class public Lcom/android/nfc/FireflyRenderer;
.super Ljava/lang/Object;
.source "FireflyRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/FireflyRenderer$1;,
        Lcom/android/nfc/FireflyRenderer$Firefly;,
        Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;
    }
.end annotation


# static fields
.field static final FAR_CLIPPING_PLANE:F = 100.0f

.field private static final LOG_TAG:Ljava/lang/String; = "NfcFireflyThread"

.field static final NEAR_CLIPPING_PLANE:F = 50.0f

.field static final NUM_FIREFLIES:I = 0xc8

.field static final mIndices:[S

.field static final mTextCoords:[F

.field static final mVertices:[F

.field static final sEglConfig:[I


# instance fields
.field final mContext:Landroid/content/Context;

.field mDisplayHeight:I

.field mDisplayWidth:I

.field final mFireflies:[Lcom/android/nfc/FireflyRenderer$Firefly;

.field mFireflyRenderThread:Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;

.field final mIndexBuffer:Ljava/nio/ShortBuffer;

.field mSurface:Landroid/graphics/SurfaceTexture;

.field final mTextureBuffer:Ljava/nio/FloatBuffer;

.field final mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/FireflyRenderer;->sEglConfig:[I

    .line 62
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/nfc/FireflyRenderer;->mVertices:[F

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/nfc/FireflyRenderer;->mTextCoords:[F

    .line 78
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/nfc/FireflyRenderer;->mIndices:[S

    return-void

    .line 51
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data

    .line 62
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x42000000    # 32.0f
        0x0
        0x42000000    # 32.0f
        0x42000000    # 32.0f
        0x0
        0x42000000    # 32.0f
        0x0
        0x0
    .end array-data

    .line 70
    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 78
    :array_3
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0xc8

    const/4 v6, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/nfc/FireflyRenderer;->mContext:Landroid/content/Context;

    .line 104
    sget-object v4, Lcom/android/nfc/FireflyRenderer;->mVertices:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 105
    .local v3, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/FireflyRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 107
    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v5, Lcom/android/nfc/FireflyRenderer;->mVertices:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 108
    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    sget-object v4, Lcom/android/nfc/FireflyRenderer;->mIndices:[S

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 111
    .local v1, "ibb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 112
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/FireflyRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 113
    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    sget-object v5, Lcom/android/nfc/FireflyRenderer;->mIndices:[S

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 114
    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v4, v6}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    sget-object v4, Lcom/android/nfc/FireflyRenderer;->mTextCoords:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 117
    .local v2, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/FireflyRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 119
    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v5, Lcom/android/nfc/FireflyRenderer;->mTextCoords:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 120
    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    new-array v4, v7, [Lcom/android/nfc/FireflyRenderer$Firefly;

    iput-object v4, p0, Lcom/android/nfc/FireflyRenderer;->mFireflies:[Lcom/android/nfc/FireflyRenderer$Firefly;

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 124
    iget-object v4, p0, Lcom/android/nfc/FireflyRenderer;->mFireflies:[Lcom/android/nfc/FireflyRenderer$Firefly;

    new-instance v5, Lcom/android/nfc/FireflyRenderer$Firefly;

    invoke-direct {v5, p0}, Lcom/android/nfc/FireflyRenderer$Firefly;-><init>(Lcom/android/nfc/FireflyRenderer;)V

    aput-object v5, v4, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public start(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/nfc/FireflyRenderer;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 134
    iput p2, p0, Lcom/android/nfc/FireflyRenderer;->mDisplayWidth:I

    .line 135
    iput p3, p0, Lcom/android/nfc/FireflyRenderer;->mDisplayHeight:I

    .line 137
    new-instance v0, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;-><init>(Lcom/android/nfc/FireflyRenderer;Lcom/android/nfc/FireflyRenderer$1;)V

    iput-object v0, p0, Lcom/android/nfc/FireflyRenderer;->mFireflyRenderThread:Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;

    .line 138
    iget-object v0, p0, Lcom/android/nfc/FireflyRenderer;->mFireflyRenderThread:Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;

    invoke-virtual {v0}, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->start()V

    .line 139
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/nfc/FireflyRenderer;->mFireflyRenderThread:Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/nfc/FireflyRenderer;->mFireflyRenderThread:Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;

    invoke-virtual {v1}, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->finish()V

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/FireflyRenderer;->mFireflyRenderThread:Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;

    invoke-virtual {v1}, Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/FireflyRenderer;->mFireflyRenderThread:Lcom/android/nfc/FireflyRenderer$FireflyRenderThread;

    .line 155
    :cond_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "NfcFireflyThread"

    const-string v2, "Couldn\'t wait for FireflyRenderThread."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
