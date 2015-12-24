.class Lcom/google/android/gms/internal/jj$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jj;->b(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic GU:Lcom/google/android/gms/internal/ji;

.field final synthetic GW:Lcom/google/android/gms/internal/jj;

.field final synthetic Ha:Z

.field final synthetic Hb:I

.field final synthetic Hc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/ji;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jj$5;->GW:Lcom/google/android/gms/internal/jj;

    iput-object p2, p0, Lcom/google/android/gms/internal/jj$5;->GU:Lcom/google/android/gms/internal/ji;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/jj$5;->Ha:Z

    iput p4, p0, Lcom/google/android/gms/internal/jj$5;->Hb:I

    iput p5, p0, Lcom/google/android/gms/internal/jj$5;->Hc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/jj$5;->GU:Lcom/google/android/gms/internal/ji;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/jj$5;->Ha:Z

    iget v2, p0, Lcom/google/android/gms/internal/jj$5;->Hb:I

    iget v3, p0, Lcom/google/android/gms/internal/jj$5;->Hc:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ji;->a(ZII)V

    return-void
.end method
