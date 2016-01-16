.class final Lcom/android/nfc/SendUi$ScreenshotTask;
.super Landroid/os/AsyncTask;
.source "SendUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/SendUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScreenshotTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/SendUi;


# direct methods
.method constructor <init>(Lcom/android/nfc/SendUi;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/SendUi;->createScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 547
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/SendUi$ScreenshotTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 555
    iget-object v2, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iget v2, v2, Lcom/android/nfc/SendUi;->mState:I

    if-ne v2, v0, :cond_0

    .line 557
    iget-object v1, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iput v5, v1, Lcom/android/nfc/SendUi;->mState:I

    .line 577
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iget v2, v2, Lcom/android/nfc/SendUi;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 560
    iget-object v2, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iput v1, v2, Lcom/android/nfc/SendUi;->mState:I

    goto :goto_0

    .line 561
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iget v2, v2, Lcom/android/nfc/SendUi;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iget v2, v2, Lcom/android/nfc/SendUi;->mState:I

    if-ne v2, v4, :cond_5

    .line 563
    :cond_2
    if-eqz p1, :cond_4

    .line 564
    iget-object v2, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iput-object p1, v2, Lcom/android/nfc/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 565
    iget-object v2, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iget v2, v2, Lcom/android/nfc/SendUi;->mState:I

    if-ne v2, v4, :cond_3

    .line 566
    .local v0, "requestTap":Z
    :goto_1
    iget-object v1, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iput v5, v1, Lcom/android/nfc/SendUi;->mState:I

    .line 567
    iget-object v1, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    invoke-virtual {v1, v0}, Lcom/android/nfc/SendUi;->showPreSend(Z)V

    goto :goto_0

    .end local v0    # "requestTap":Z
    :cond_3
    move v0, v1

    .line 565
    goto :goto_1

    .line 571
    :cond_4
    const-string v2, "SendUi"

    const-string v3, "Failed to create screenshot"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v2, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iput v1, v2, Lcom/android/nfc/SendUi;->mState:I

    goto :goto_0

    .line 575
    :cond_5
    const-string v1, "SendUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state on screenshot completion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iget v3, v3, Lcom/android/nfc/SendUi;->mState:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 547
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/SendUi$ScreenshotTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
