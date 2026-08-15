.class public final Lcom/igsinreels/Blocker;
.super Ljava/lang/Object;
.source "Blocker.java"





# direct methods


# true si `name` es un fragment de Reels (nombres ofuscados, los rellena patch.py).
.method public static isBlocked(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_no

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__BLOCKED_NAMES__"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_no
    const/4 v0, 0x0

    return v0
.end method

# Feed de inicio: los reels y anuncios en video se descartan salvo que los ajustes
# (cuadros de "Publicaciones") los permitan.
.method public static feedMedia(Lcom/instagram/feed/media/Media;)Lcom/instagram/feed/media/Media;
    .registers 3

    if-eqz p0, :cond_keep

    :try_start
    invoke-static {p0}, Lcom/igsinreels/Gate;->keepFeedReel(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_keep

    const/4 v0, 0x0

    return-object v0
    :try_end
    .catch Ljava/lang/Throwable; {:try_start .. :try_end} :cond_keep

    :cond_keep
    return-object p0
.end method



# true si el objeto es un Media que se ve como reel: ProductType CLIPS o un video.
.method public static isClips(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p0, Lcom/instagram/feed/media/Media;

    if-eqz v0, :cond_no

    check-cast p0, Lcom/instagram/feed/media/Media;

    invoke-static {p0}, Lcom/instagram/feed/media/MediaExtKt;->__PRODUCT_TYPE__(Lcom/instagram/feed/media/Media;)Lcom/instagram/model/mediatype/ProductType;

    move-result-object v0

    sget-object v1, Lcom/instagram/model/mediatype/ProductType;->__CLIPS__:Lcom/instagram/model/mediatype/ProductType;

    if-eq v0, v1, :cond_yes

    new-instance v0, __TYPE_WRAPPER__

    invoke-direct {v0, p0}, __TYPE_WRAPPER__-><init>(__MEDIA_DICT__)V

    invoke-static {v0}, Lcom/instagram/feed/media/MediaExtKt;->__MEDIA_TYPE__(__TYPE_WRAPPER__)__MEDIA_TYPE_CLS__

    move-result-object v0

    sget-object v1, __MEDIA_TYPE_CLS__->__VIDEO__:__MEDIA_TYPE_CLS__

    if-ne v0, v1, :cond_no

    :cond_yes
    const/4 v0, 0x1

    return v0

    :cond_no
    const/4 v0, 0x0

    return v0
.end method

# Adaptador generico de listas: tras enlazar una celda (ViewHolder) con su modelo.
.method public static bound(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p0, __VIEW_HOLDER__

    if-eqz v0, :cond_end

    check-cast p0, __VIEW_HOLDER__

    iget-object v0, p0, __VIEW_HOLDER__->__ITEM_VIEW__:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/igsinreels/Gate;->bound(Landroid/view/View;Ljava/lang/Object;)V

    :cond_end
    return-void
.end method

# Depuracion: "ProductType/MediaType" de un Media.
.method public static describe(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    instance-of v0, p0, Lcom/instagram/feed/media/Media;

    if-eqz v0, :cond_no

    check-cast p0, Lcom/instagram/feed/media/Media;

    invoke-static {p0}, Lcom/instagram/feed/media/MediaExtKt;->__PRODUCT_TYPE__(Lcom/instagram/feed/media/Media;)Lcom/instagram/model/mediatype/ProductType;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, __TYPE_WRAPPER__

    invoke-direct {v1, p0}, __TYPE_WRAPPER__-><init>(__MEDIA_DICT__)V

    invoke-static {v1}, Lcom/instagram/feed/media/MediaExtKt;->__MEDIA_TYPE__(__TYPE_WRAPPER__)__MEDIA_TYPE_CLS__

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_no
    const-string v0, "?"

    return-object v0
.end method

# Cualquier adaptador (RecyclerView.Adapter.bindViewHolder): tras enlazar una celda.
.method public static boundHolder(Ljava/lang/Object;)V
    .registers 2

    instance-of v0, p0, __VIEW_HOLDER__

    if-eqz v0, :cond_end

    move-object v0, p0

    check-cast v0, __VIEW_HOLDER__

    iget-object v0, v0, __VIEW_HOLDER__->__ITEM_VIEW__:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/igsinreels/Gate;->boundHolder(Landroid/view/View;Ljava/lang/Object;)V

    :cond_end
    return-void
.end method

# Contenido de un mensaje de chat (sub-ViewHolder + modelo), p. ej. un reel enviado.
.method public static boundContent(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p0, __VIEW_HOLDER__

    if-eqz v0, :cond_end

    move-object v0, p0

    check-cast v0, __VIEW_HOLDER__

    iget-object v0, v0, __VIEW_HOLDER__->__ITEM_VIEW__:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/igsinreels/Gate;->boundContent(Landroid/view/View;Ljava/lang/Object;)V

    :cond_end
    return-void
.end method

# true si el Media tiene ProductType CLIPS (reel "de verdad"; el resto de videos
# son videos de publicaciones).
.method public static isClipsProduct(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p0, Lcom/instagram/feed/media/Media;

    if-eqz v0, :cond_no

    check-cast p0, Lcom/instagram/feed/media/Media;

    invoke-static {p0}, Lcom/instagram/feed/media/MediaExtKt;->__PRODUCT_TYPE__(Lcom/instagram/feed/media/Media;)Lcom/instagram/model/mediatype/ProductType;

    move-result-object v0

    sget-object v1, Lcom/instagram/model/mediatype/ProductType;->__CLIPS__:Lcom/instagram/model/mediatype/ProductType;

    if-ne v0, v1, :cond_no

    const/4 v0, 0x1

    return v0

    :cond_no
    const/4 v0, 0x0

    return v0
.end method

