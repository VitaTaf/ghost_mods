.class Lcom/android/internal/database/SortCursor$2;
.super Landroid/database/DataSetObserver;
.source "SortCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/database/SortCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/database/SortCursor;


# direct methods
.method constructor <init>(Lcom/android/internal/database/SortCursor;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/database/SortCursor$2;->this$0:Lcom/android/internal/database/SortCursor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/database/SortCursor$2;->this$0:Lcom/android/internal/database/SortCursor;

    # getter for: Lcom/android/internal/database/SortCursor;->mRequeryOngoing:Z
    invoke-static {v0}, Lcom/android/internal/database/SortCursor;->access$200(Lcom/android/internal/database/SortCursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/internal/database/SortCursor$2;->this$0:Lcom/android/internal/database/SortCursor;

    # getter for: Lcom/android/internal/database/SortCursor;->mRequeryCount:I
    invoke-static {v0}, Lcom/android/internal/database/SortCursor;->access$300(Lcom/android/internal/database/SortCursor;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/database/SortCursor$2;->this$0:Lcom/android/internal/database/SortCursor;

    # getter for: Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/internal/database/SortCursor;->access$400(Lcom/android/internal/database/SortCursor;)[Landroid/database/Cursor;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/internal/database/SortCursor$2;->this$0:Lcom/android/internal/database/SortCursor;

    # getter for: Lcom/android/internal/database/SortCursor;->mDataSetObservableOutter:Landroid/database/DataSetObservable;
    invoke-static {v0}, Lcom/android/internal/database/SortCursor;->access$500(Lcom/android/internal/database/SortCursor;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/internal/database/SortCursor$2;->this$0:Lcom/android/internal/database/SortCursor;

    # getter for: Lcom/android/internal/database/SortCursor;->mDataSetObservableOutter:Landroid/database/DataSetObservable;
    invoke-static {v0}, Lcom/android/internal/database/SortCursor;->access$500(Lcom/android/internal/database/SortCursor;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
