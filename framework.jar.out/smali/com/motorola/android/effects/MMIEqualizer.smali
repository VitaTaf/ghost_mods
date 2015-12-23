.class public Lcom/motorola/android/effects/MMIEqualizer;
.super Landroid/media/audiofx/AudioEffect;
.source "MMIEqualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/effects/MMIEqualizer$1;,
        Lcom/motorola/android/effects/MMIEqualizer$Settings;,
        Lcom/motorola/android/effects/MMIEqualizer$BaseParameterListener;,
        Lcom/motorola/android/effects/MMIEqualizer$OnParameterChangeListener;
    }
.end annotation


# static fields
.field private static final EFFECT_UUID_EQUALIZER_MMI:Ljava/util/UUID;

.field public static final PARAM_BAND_FREQ_RANGE:I = 0x4

.field public static final PARAM_BAND_LEVEL:I = 0x2

.field public static final PARAM_CENTER_FREQ:I = 0x3

.field public static final PARAM_CURRENT_PRESET:I = 0x6

.field public static final PARAM_GET_BAND:I = 0x5

.field public static final PARAM_GET_NUM_OF_PRESETS:I = 0x7

.field public static final PARAM_GET_PRESET_NAME:I = 0x8

.field public static final PARAM_LEVEL_RANGE:I = 0x1

.field public static final PARAM_NUM_BANDS:I = 0x0

.field private static final PARAM_PROPERTIES:I = 0x9

.field public static final PARAM_STRING_SIZE_MAX:I = 0x20

.field private static final TAG:Ljava/lang/String; = "Equalizer"


# instance fields
.field private mBaseParamListener:Lcom/motorola/android/effects/MMIEqualizer$BaseParameterListener;

.field private mNumBands:S

.field private mNumPresets:I

.field private mParamListener:Lcom/motorola/android/effects/MMIEqualizer$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mPresetNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const-string v0, "bce61ec2-eca4-445c-9dcb-91cc7cce01ba"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/effects/MMIEqualizer;->EFFECT_UUID_EQUALIZER_MMI:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 9
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 146
    sget-object v5, Lcom/motorola/android/effects/MMIEqualizer;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    sget-object v6, Lcom/motorola/android/effects/MMIEqualizer;->EFFECT_UUID_EQUALIZER_MMI:Ljava/util/UUID;

    invoke-direct {p0, v5, v6, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 97
    iput-short v7, p0, Lcom/motorola/android/effects/MMIEqualizer;->mNumBands:S

    .line 111
    iput-object v8, p0, Lcom/motorola/android/effects/MMIEqualizer;->mParamListener:Lcom/motorola/android/effects/MMIEqualizer$OnParameterChangeListener;

    .line 116
    iput-object v8, p0, Lcom/motorola/android/effects/MMIEqualizer;->mBaseParamListener:Lcom/motorola/android/effects/MMIEqualizer$BaseParameterListener;

    .line 121
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/motorola/android/effects/MMIEqualizer;->mParamListenerLock:Ljava/lang/Object;

    .line 148
    if-nez p2, :cond_0

    .line 149
    const-string v5, "Equalizer"

    const-string v6, "WARNING: attaching an Equalizer to global output mix is deprecated!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/android/effects/MMIEqualizer;->getNumberOfBands()S

    .line 154
    invoke-virtual {p0}, Lcom/motorola/android/effects/MMIEqualizer;->getNumberOfPresets()S

    move-result v5

    iput v5, p0, Lcom/motorola/android/effects/MMIEqualizer;->mNumPresets:I

    .line 156
    iget v5, p0, Lcom/motorola/android/effects/MMIEqualizer;->mNumPresets:I

    if-eqz v5, :cond_2

    .line 157
    iget v5, p0, Lcom/motorola/android/effects/MMIEqualizer;->mNumPresets:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/motorola/android/effects/MMIEqualizer;->mPresetNames:[Ljava/lang/String;

    .line 158
    const/16 v5, 0x20

    new-array v4, v5, [B

    .line 159
    .local v4, "value":[B
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 160
    .local v3, "param":[I
    const/16 v5, 0x8

    aput v5, v3, v7

    .line 161
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/motorola/android/effects/MMIEqualizer;->mNumPresets:I

    if-ge v1, v5, :cond_2

    .line 162
    const/4 v5, 0x1

    aput v1, v3, v5

    .line 163
    invoke-virtual {p0, v3, v4}, Lcom/motorola/android/effects/MMIEqualizer;->getParameter([I[B)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/motorola/android/effects/MMIEqualizer;->checkStatus(I)V

    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "length":I
    :goto_1
    aget-byte v5, v4, v2

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 167
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/effects/MMIEqualizer;->mPresetNames:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ISO-8859-1"

    invoke-direct {v6, v4, v7, v2, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "Equalizer"

    const-string/jumbo v6, "preset name decode error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 173
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "param":[I
    .end local v4    # "value":[B
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/effects/MMIEqualizer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/effects/MMIEqualizer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/android/effects/MMIEqualizer;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/android/effects/MMIEqualizer;)Lcom/motorola/android/effects/MMIEqualizer$OnParameterChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/effects/MMIEqualizer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/android/effects/MMIEqualizer;->mParamListener:Lcom/motorola/android/effects/MMIEqualizer$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getBand(I)S
    .locals 5
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 307
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 308
    .local v0, "param":[I
    new-array v1, v4, [S

    .line 310
    .local v1, "result":[S
    const/4 v2, 0x5

    aput v2, v0, v3

    .line 311
    aput p1, v0, v4

    .line 312
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/effects/MMIEqualizer;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/effects/MMIEqualizer;->checkStatus(I)V

    .line 314
    aget-short v2, v1, v3

    return v2
.end method

.method public getBandFreqRange(S)[I
    .locals 4
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 288
    new-array v0, v2, [I

    .line 289
    .local v0, "param":[I
    new-array v1, v2, [I

    .line 290
    .local v1, "result":[I
    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v0, v2

    .line 291
    const/4 v2, 0x1

    aput p1, v0, v2

    .line 292
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/effects/MMIEqualizer;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/effects/MMIEqualizer;->checkStatus(I)V

    .line 294
    return-object v1
.end method

.method public getBandLevel(S)S
    .locals 5
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 244
    new-array v0, v4, [I

    .line 245
    .local v0, "param":[I
    new-array v1, v2, [S

    .line 247
    .local v1, "result":[S
    aput v4, v0, v3

    .line 248
    aput p1, v0, v2

    .line 249
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/effects/MMIEqualizer;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/effects/MMIEqualizer;->checkStatus(I)V

    .line 251
    aget-short v2, v1, v3

    return v2
.end method

.method public getBandLevelRange()[S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v1, 0x2

    new-array v0, v1, [S

    .line 207
    .local v0, "result":[S
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/android/effects/MMIEqualizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/effects/MMIEqualizer;->checkStatus(I)V

    .line 208
    return-object v0
.end method

.method public getCenterFreq(S)I
    .locals 5
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 267
    .local v0, "param":[I
    new-array v1, v4, [I

    .line 269
    .local v1, "result":[I
    const/4 v2, 0x3

    aput v2, v0, v3

    .line 270
    aput p1, v0, v4

    .line 271
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/effects/MMIEqualizer;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/effects/MMIEqualizer;->checkStatus(I)V

    .line 273
    aget v2, v1, v3

    return v2
.end method

.method public getCurrentPreset()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 326
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 327
    .local v0, "result":[S
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/motorola/android/effects/MMIEqualizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/effects/MMIEqualizer;->checkStatus(I)V

    .line 328
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getNumberOfBands()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    iget-short v2, p0, Lcom/motorola/android/effects/MMIEqualizer;->mNumBands:S

    if-eqz v2, :cond_0

    .line 185
    iget-short v2, p0, Lcom/motorola/android/effects/MMIEqualizer;->mNumBands:S

    .line 192
    :goto_0
    return v2

    .line 187
    :cond_0
    new-array v0, v4, [I

    .line 188
    .local v0, "param":[I
    aput v3, v0, v3

    .line 189
    new-array v1, v4, [S

    .line 190
    .local v1, "result":[S
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/effects/MMIEqualizer;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/effects/MMIEqualizer;->checkStatus(I)V

    .line 191
    aget-short v2, v1, v3

    iput-short v2, p0, Lcom/motorola/android/effects/MMIEqualizer;->mNumBands:S

    .line 192
    iget-short v2, p0, Lcom/motorola/android/effects/MMIEqualizer;->mNumBands:S

    goto :goto_0
.end method

.method public getNumberOfPresets()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 357
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 358
    .local v0, "result":[S
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/motorola/android/effects/MMIEqualizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/effects/MMIEqualizer;->checkStatus(I)V

    .line 359
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getPresetName(S)Ljava/lang/String;
    .locals 1
    .param p1, "preset"    # S

    .prologue
    .line 372
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/motorola/android/effects/MMIEqualizer;->mNumPresets:I

    if-ge p1, v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/motorola/android/effects/MMIEqualizer;->mPresetNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 375
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getProperties()Lcom/motorola/android/effects/MMIEqualizer$Settings;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 533
    iget-short v3, p0, Lcom/motorola/android/effects/MMIEqualizer;->mNumBands:S

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x4

    new-array v1, v3, [B

    .line 534
    .local v1, "param":[B
    const/16 v3, 0x9

    invoke-virtual {p0, v3, v1}, Lcom/motorola/android/effects/MMIEqualizer;->getParameter(I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/effects/MMIEqualizer;->checkStatus(I)V

    .line 535
    new-instance v2, Lcom/motorola/android/effects/MMIEqualizer$Settings;

    invoke-direct {v2}, Lcom/motorola/android/effects/MMIEqualizer$Settings;-><init>()V

    .line 536
    .local v2, "settings":Lcom/motorola/android/effects/MMIEqualizer$Settings;
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/motorola/android/effects/MMIEqualizer;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Lcom/motorola/android/effects/MMIEqualizer$Settings;->curPreset:S

    .line 537
    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/motorola/android/effects/MMIEqualizer;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Lcom/motorola/android/effects/MMIEqualizer$Settings;->numBands:S

    .line 538
    iget-short v3, p0, Lcom/motorola/android/effects/MMIEqualizer;->mNumBands:S

    new-array v3, v3, [S

    iput-object v3, v2, Lcom/motorola/android/effects/MMIEqualizer$Settings;->bandLevels:[S

    .line 539
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-short v3, p0, Lcom/motorola/android/effects/MMIEqualizer;->mNumBands:S

    if-ge v0, v3, :cond_0

    .line 540
    iget-object v3, v2, Lcom/motorola/android/effects/MMIEqualizer$Settings;->bandLevels:[S

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-static {v1, v4}, Lcom/motorola/android/effects/MMIEqualizer;->byteArrayToShort([BI)S

    move-result v4

    aput-short v4, v3, v0

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    :cond_0
    return-object v2
.end method

.method public setBandLevel(SS)V
    .locals 5
    .param p1, "band"    # S
    .param p2, "level"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 224
    new-array v0, v4, [I

    .line 225
    .local v0, "param":[I
    new-array v1, v3, [S

    .line 227
    .local v1, "value":[S
    aput v4, v0, v2

    .line 228
    aput p1, v0, v3

    .line 229
    aput-short p2, v1, v2

    .line 230
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/effects/MMIEqualizer;->setParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/effects/MMIEqualizer;->checkStatus(I)V

    .line 231
    return-void
.end method

.method public setParameterListener(Lcom/motorola/android/effects/MMIEqualizer$OnParameterChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/motorola/android/effects/MMIEqualizer$OnParameterChangeListener;

    .prologue
    .line 442
    iget-object v1, p0, Lcom/motorola/android/effects/MMIEqualizer;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/effects/MMIEqualizer;->mParamListener:Lcom/motorola/android/effects/MMIEqualizer$OnParameterChangeListener;

    if-nez v0, :cond_0

    .line 444
    iput-object p1, p0, Lcom/motorola/android/effects/MMIEqualizer;->mParamListener:Lcom/motorola/android/effects/MMIEqualizer$OnParameterChangeListener;

    .line 445
    new-instance v0, Lcom/motorola/android/effects/MMIEqualizer$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/motorola/android/effects/MMIEqualizer$BaseParameterListener;-><init>(Lcom/motorola/android/effects/MMIEqualizer;Lcom/motorola/android/effects/MMIEqualizer$1;)V

    iput-object v0, p0, Lcom/motorola/android/effects/MMIEqualizer;->mBaseParamListener:Lcom/motorola/android/effects/MMIEqualizer$BaseParameterListener;

    .line 446
    iget-object v0, p0, Lcom/motorola/android/effects/MMIEqualizer;->mBaseParamListener:Lcom/motorola/android/effects/MMIEqualizer$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 448
    :cond_0
    monitor-exit v1

    .line 449
    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProperties(Lcom/motorola/android/effects/MMIEqualizer$Settings;)V
    .locals 7
    .param p1, "settings"    # Lcom/motorola/android/effects/MMIEqualizer$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 555
    iget-short v2, p1, Lcom/motorola/android/effects/MMIEqualizer$Settings;->numBands:S

    iget-object v3, p1, Lcom/motorola/android/effects/MMIEqualizer$Settings;->bandLevels:[S

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iget-short v2, p1, Lcom/motorola/android/effects/MMIEqualizer$Settings;->numBands:S

    iget-short v3, p0, Lcom/motorola/android/effects/MMIEqualizer;->mNumBands:S

    if-eq v2, v3, :cond_1

    .line 557
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "settings invalid band count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, p1, Lcom/motorola/android/effects/MMIEqualizer$Settings;->numBands:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 560
    :cond_1
    new-array v2, v6, [[B

    iget-short v3, p1, Lcom/motorola/android/effects/MMIEqualizer$Settings;->curPreset:S

    invoke-static {v3}, Lcom/motorola/android/effects/MMIEqualizer;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v4

    iget-short v3, p0, Lcom/motorola/android/effects/MMIEqualizer;->mNumBands:S

    invoke-static {v3}, Lcom/motorola/android/effects/MMIEqualizer;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/motorola/android/effects/MMIEqualizer;->concatArrays([[B)[B

    move-result-object v1

    .line 562
    .local v1, "param":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-short v2, p0, Lcom/motorola/android/effects/MMIEqualizer;->mNumBands:S

    if-ge v0, v2, :cond_2

    .line 563
    new-array v2, v6, [[B

    aput-object v1, v2, v4

    iget-object v3, p1, Lcom/motorola/android/effects/MMIEqualizer$Settings;->bandLevels:[S

    aget-short v3, v3, v0

    invoke-static {v3}, Lcom/motorola/android/effects/MMIEqualizer;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/motorola/android/effects/MMIEqualizer;->concatArrays([[B)[B

    move-result-object v1

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_2
    const/16 v2, 0x9

    invoke-virtual {p0, v2, v1}, Lcom/motorola/android/effects/MMIEqualizer;->setParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/effects/MMIEqualizer;->checkStatus(I)V

    .line 567
    return-void
.end method

.method public usePreset(S)V
    .locals 4
    .param p1, "preset"    # S

    .prologue
    .line 340
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/motorola/android/effects/MMIEqualizer;->setParameter(IS)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/effects/MMIEqualizer;->checkStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Equalizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set Parameter error,preset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
