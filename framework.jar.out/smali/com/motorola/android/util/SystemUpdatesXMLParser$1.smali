.class Lcom/motorola/android/util/SystemUpdatesXMLParser$1;
.super Ljava/lang/Object;
.source "SystemUpdatesXMLParser.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/util/SystemUpdatesXMLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/util/SystemUpdatesXMLParser;


# direct methods
.method constructor <init>(Lcom/motorola/android/util/SystemUpdatesXMLParser;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser$1;->this$0:Lcom/motorola/android/util/SystemUpdatesXMLParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 164
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
