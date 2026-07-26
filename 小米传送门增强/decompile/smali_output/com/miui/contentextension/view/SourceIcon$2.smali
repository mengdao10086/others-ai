.class Lcom/miui/contentextension/view/SourceIcon$2;
.super Ljava/lang/Object;
.source "SourceIcon.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/view/SourceIcon;->setImageDrawableAsync(Landroid/graphics/drawable/Drawable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/view/SourceIcon;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/view/SourceIcon;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/miui/contentextension/view/SourceIcon$2;->this$0:Lcom/miui/contentextension/view/SourceIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon$2;->this$0:Lcom/miui/contentextension/view/SourceIcon;

    invoke-static {v0, p1}, Lcom/miui/contentextension/view/SourceIcon;->-$$Nest$mgetComposedImage(Lcom/miui/contentextension/view/SourceIcon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/view/SourceIcon$2;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
