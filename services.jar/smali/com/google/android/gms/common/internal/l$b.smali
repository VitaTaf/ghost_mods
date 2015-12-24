.class final Lcom/google/android/gms/common/internal/l$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/l$b$a;
    }
.end annotation


# instance fields
.field private Qj:Landroid/content/ComponentName;

.field private final Qk:Lcom/google/android/gms/common/internal/l$b$a;

.field private final Ql:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private Qm:Z

.field private Qn:Landroid/os/IBinder;

.field private final Qo:Lcom/google/android/gms/common/internal/l$a;

.field final synthetic Qp:Lcom/google/android/gms/common/internal/l;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/l;Lcom/google/android/gms/common/internal/l$a;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/l$b;->Qp:Lcom/google/android/gms/common/internal/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/l$b;->Qo:Lcom/google/android/gms/common/internal/l$a;

    new-instance v0, Lcom/google/android/gms/common/internal/l$b$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/l$b$a;-><init>(Lcom/google/android/gms/common/internal/l$b;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l$b;->Qk:Lcom/google/android/gms/common/internal/l$b$a;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/l$b;->Ql:Ljava/util/Set;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/l$b;->mState:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/l$b;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/internal/l$b;->mState:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/l$b;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/l$b;->Qj:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/l$b;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/l$b;->Qn:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/l$b;)Lcom/google/android/gms/common/internal/l$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b;->Qo:Lcom/google/android/gms/common/internal/l$a;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/l$b;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b;->Ql:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b;->Qp:Lcom/google/android/gms/common/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->c(Lcom/google/android/gms/common/internal/l;)Lcom/google/android/gms/internal/nn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l$b;->Qp:Lcom/google/android/gms/common/internal/l;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/l;->b(Lcom/google/android/gms/common/internal/l;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l$b;->Qo:Lcom/google/android/gms/common/internal/l$a;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/l$a;->iF()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/nn;->a(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b;->Ql:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/content/ServiceConnection;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b;->Ql:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b;->Qp:Lcom/google/android/gms/common/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->c(Lcom/google/android/gms/common/internal/l;)Lcom/google/android/gms/internal/nn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l$b;->Qp:Lcom/google/android/gms/common/internal/l;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/l;->b(Lcom/google/android/gms/common/internal/l;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/nn;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b;->Ql:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bh(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b;->Qp:Lcom/google/android/gms/common/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->c(Lcom/google/android/gms/common/internal/l;)Lcom/google/android/gms/internal/nn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l$b;->Qp:Lcom/google/android/gms/common/internal/l;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/l;->b(Lcom/google/android/gms/common/internal/l;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l$b;->Qo:Lcom/google/android/gms/common/internal/l$a;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/l$a;->iF()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/l$b;->Qk:Lcom/google/android/gms/common/internal/l$b$a;

    const/16 v5, 0x81

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/nn;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/l$b;->Qm:Z

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/l$b;->Qm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/l$b;->mState:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b;->Qp:Lcom/google/android/gms/common/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->c(Lcom/google/android/gms/common/internal/l;)Lcom/google/android/gms/internal/nn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l$b;->Qp:Lcom/google/android/gms/common/internal/l;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/l;->b(Lcom/google/android/gms/common/internal/l;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l$b;->Qk:Lcom/google/android/gms/common/internal/l$b$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nn;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method

.method public bi(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b;->Qp:Lcom/google/android/gms/common/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->c(Lcom/google/android/gms/common/internal/l;)Lcom/google/android/gms/internal/nn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l$b;->Qp:Lcom/google/android/gms/common/internal/l;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/l;->b(Lcom/google/android/gms/common/internal/l;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l$b;->Qk:Lcom/google/android/gms/common/internal/l$b$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nn;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/l$b;->Qm:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/l$b;->mState:I

    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b;->Qn:Landroid/os/IBinder;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b;->Qj:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/l$b;->mState:I

    return v0
.end method

.method public iG()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$b;->Ql:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/l$b;->Qm:Z

    return v0
.end method
