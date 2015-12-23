.class public Lcom/android/internal/database/SortCursor;
.super Landroid/database/AbstractCursor;
.source "SortCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SortCursor"


# instance fields
.field private final ROWCACHESIZE:I

.field private mCurRowNumCache:[[I

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCache:[I

.field private mCursors:[Landroid/database/Cursor;

.field private final mDataSetObservableOutter:Landroid/database/DataSetObservable;

.field private mLastCacheHit:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mObserverInner:Landroid/database/DataSetObserver;

.field private mRequeryCount:I

.field private mRequeryOngoing:Z

.field private mRowNumCache:[I

.field private mSortColumns:[I


# direct methods
.method public constructor <init>([Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 8
    .param p1, "cursors"    # [Landroid/database/Cursor;
    .param p2, "sortcolumn"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x40

    .line 79
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 35
    iput v7, p0, Lcom/android/internal/database/SortCursor;->ROWCACHESIZE:I

    .line 36
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    .line 37
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    .line 39
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    .line 41
    new-instance v5, Lcom/android/internal/database/SortCursor$1;

    invoke-direct {v5, p0}, Lcom/android/internal/database/SortCursor$1;-><init>(Lcom/android/internal/database/SortCursor;)V

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 56
    iput v6, p0, Lcom/android/internal/database/SortCursor;->mRequeryCount:I

    .line 57
    iput-boolean v6, p0, Lcom/android/internal/database/SortCursor;->mRequeryOngoing:Z

    .line 58
    new-instance v5, Landroid/database/DataSetObservable;

    invoke-direct {v5}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mDataSetObservableOutter:Landroid/database/DataSetObservable;

    .line 59
    new-instance v5, Lcom/android/internal/database/SortCursor$2;

    invoke-direct {v5, p0}, Lcom/android/internal/database/SortCursor$2;-><init>(Lcom/android/internal/database/SortCursor;)V

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mObserverInner:Landroid/database/DataSetObserver;

    .line 80
    iput-object p1, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 82
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v3, v5

    .line 83
    .local v3, "length":I
    new-array v5, v3, [I

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    .line 84
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 85
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v1

    if-nez v5, :cond_0

    .line 84
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 90
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v6, v6, v1

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v1

    goto :goto_1

    .line 95
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 96
    const-string v4, ""

    .line 97
    .local v4, "smallest":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 98
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 97
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 100
    :cond_3
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    aget v6, v6, v2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "current":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2

    .line 102
    :cond_4
    move-object v4, v0

    .line 103
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    goto :goto_3

    .line 107
    .end local v0    # "current":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    :goto_4
    if-ltz v1, :cond_6

    .line 108
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    const/4 v6, -0x2

    aput v6, v5, v1

    .line 107
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 110
    :cond_6
    filled-new-array {v7, v3}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    .line 111
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/database/SortCursor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/database/SortCursor;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/android/internal/database/SortCursor;->mPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/database/SortCursor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/database/SortCursor;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/android/internal/database/SortCursor;->mPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/database/SortCursor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/database/SortCursor;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/internal/database/SortCursor;->mRequeryOngoing:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/database/SortCursor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/database/SortCursor;

    .prologue
    .line 29
    iget v0, p0, Lcom/android/internal/database/SortCursor;->mRequeryCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/database/SortCursor;)[Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/database/SortCursor;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/database/SortCursor;)Landroid/database/DataSetObservable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/database/SortCursor;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mDataSetObservableOutter:Landroid/database/DataSetObservable;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 290
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 291
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 292
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 291
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 295
    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 281
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 282
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 283
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 282
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    goto :goto_1

    .line 286
    :cond_1
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 263
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 271
    :goto_0
    return-object v2

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 269
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 270
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 269
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No cursor that can return names"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v3

    .line 118
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 119
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 118
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_1
    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 13
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    const/4 v12, -0x1

    const/4 v8, 0x1

    .line 129
    if-ne p1, p2, :cond_0

    .line 204
    :goto_0
    return v8

    .line 140
    :cond_0
    rem-int/lit8 v0, p2, 0x40

    .line 142
    .local v0, "cache_entry":I
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    aget v9, v9, v0

    if-ne v9, p2, :cond_2

    .line 143
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    aget v7, v9, v0

    .line 144
    .local v7, "which":I
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v7

    iput-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 145
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-nez v9, :cond_1

    .line 146
    const-string v8, "SortCursor"

    const-string/jumbo v9, "onMove: cache results in a null cursor."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v8, 0x0

    goto :goto_0

    .line 149
    :cond_1
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    aget-object v10, v10, v0

    aget v10, v10, v7

    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 150
    iput v0, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    goto :goto_0

    .line 154
    .end local v7    # "which":I
    :cond_2
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 155
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v4, v9

    .line 157
    .local v4, "length":I
    iget v9, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    if-ltz v9, :cond_4

    .line 158
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 159
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    if-nez v9, :cond_3

    .line 158
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    :cond_3
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    iget-object v10, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    iget v11, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    aget-object v10, v10, v11

    aget v10, v10, v2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_2

    .line 164
    .end local v2    # "i":I
    :cond_4
    if-lt p2, p1, :cond_5

    if-ne p1, v12, :cond_8

    .line 165
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v4, :cond_7

    .line 166
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    if-nez v9, :cond_6

    .line 165
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 167
    :cond_6
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_4

    .line 169
    :cond_7
    const/4 p1, 0x0

    .line 171
    .end local v2    # "i":I
    :cond_8
    if-gez p1, :cond_9

    .line 172
    const/4 p1, 0x0

    .line 176
    :cond_9
    const/4 v6, -0x1

    .line 177
    .local v6, "smallestIdx":I
    move v2, p1

    .restart local v2    # "i":I
    :goto_5
    if-gt v2, p2, :cond_e

    .line 178
    const-string v5, ""

    .line 179
    .local v5, "smallest":Ljava/lang/String;
    const/4 v6, -0x1

    .line 180
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_6
    if-ge v3, v4, :cond_d

    .line 181
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v3

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v3

    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 180
    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 184
    :cond_b
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v3

    iget-object v10, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    aget v10, v10, v3

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "current":Ljava/lang/String;
    if-ltz v6, :cond_c

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_a

    .line 186
    :cond_c
    move-object v5, v1

    .line 187
    move v6, v3

    goto :goto_7

    .line 190
    .end local v1    # "current":Ljava/lang/String;
    :cond_d
    if-ne v2, p2, :cond_10

    .line 195
    .end local v3    # "j":I
    .end local v5    # "smallest":Ljava/lang/String;
    :cond_e
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v6

    iput-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 196
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    aput p2, v9, v0

    .line 197
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    aput v6, v9, v0

    .line 198
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v4, :cond_12

    .line 199
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    if-eqz v9, :cond_f

    .line 200
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    aget-object v9, v9, v0

    iget-object v10, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v10, v10, v2

    invoke-interface {v10}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    aput v10, v9, v2

    .line 198
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 191
    .restart local v3    # "j":I
    .restart local v5    # "smallest":Ljava/lang/String;
    :cond_10
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v6

    if-eqz v9, :cond_11

    .line 192
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 177
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 203
    .end local v3    # "j":I
    .end local v5    # "smallest":Ljava/lang/String;
    :cond_12
    iput v12, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    goto/16 :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 300
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mDataSetObservableOutter:Landroid/database/DataSetObservable;

    invoke-virtual {v2, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 303
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 304
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 305
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mObserverInner:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 304
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    iput-boolean v3, p0, Lcom/android/internal/database/SortCursor;->mRequeryOngoing:Z

    .line 333
    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v4

    .line 334
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 335
    iget v4, p0, Lcom/android/internal/database/SortCursor;->mRequeryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/database/SortCursor;->mRequeryCount:I

    .line 336
    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v0

    if-nez v4, :cond_1

    .line 334
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_1
    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v0

    invoke-interface {v4}, Landroid/database/Cursor;->requery()Z

    move-result v4

    if-nez v4, :cond_0

    .line 340
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mDataSetObservableOutter:Landroid/database/DataSetObservable;

    invoke-virtual {v3}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 341
    iput-boolean v2, p0, Lcom/android/internal/database/SortCursor;->mRequeryOngoing:Z

    .line 342
    iput v2, p0, Lcom/android/internal/database/SortCursor;->mRequeryCount:I

    .line 352
    :goto_1
    return v2

    .line 349
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/database/SortCursor;->mRequeryOngoing:Z

    .line 350
    iput v2, p0, Lcom/android/internal/database/SortCursor;->mRequeryCount:I

    move v2, v3

    .line 352
    goto :goto_1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 316
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mDataSetObservableOutter:Landroid/database/DataSetObservable;

    invoke-virtual {v2, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 319
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 320
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 321
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mObserverInner:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 320
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_1
    return-void
.end method
