.class Lcom/android/settings/applications/AppStorageSettings$PackageMoveObserver;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "AppStorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageMoveObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$PackageMoveObserver;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageMoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings$PackageMoveObserver;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    # getter for: Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/applications/AppStorageSettings;->access$400(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings$PackageMoveObserver;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    # getter for: Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/applications/AppStorageSettings;->access$400(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
