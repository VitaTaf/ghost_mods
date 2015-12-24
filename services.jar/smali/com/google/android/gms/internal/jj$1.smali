.class Lcom/google/android/gms/internal/jj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jj;->b(Landroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic GU:Lcom/google/android/gms/internal/ji;

.field final synthetic GV:Landroid/view/KeyEvent;

.field final synthetic GW:Lcom/google/android/gms/internal/jj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/ji;Landroid/view/KeyEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jj$1;->GW:Lcom/google/android/gms/internal/jj;

    iput-object p2, p0, Lcom/google/android/gms/internal/jj$1;->GU:Lcom/google/android/gms/internal/ji;

    iput-object p3, p0, Lcom/google/android/gms/internal/jj$1;->GV:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jj$1;->GU:Lcom/google/android/gms/internal/ji;

    iget-object v1, p0, Lcom/google/android/gms/internal/jj$1;->GV:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ji;->a(Landroid/view/KeyEvent;)V

    return-void
.end method
